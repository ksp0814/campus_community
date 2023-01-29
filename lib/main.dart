import 'package:beamer/beamer.dart';
import 'package:campus_community/screens/splash_screen.dart';
import 'package:campus_community/rounter/locations.dart';
import 'package:campus_community/screens/auth.screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final _routerDelegate = BeamerDelegate(
  guards: [BeamGuard(
      pathBlueprints: ['/'],
      check: (context, location) {return true;},
    showPage: BeamPage(child: AuthScreen())
    )],

  locationBuilder: BeamerLocationBuilder(
    beamLocations: [HomeLocation()]
  )
);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<Object>(
      future: Future.delayed(Duration(seconds: 3), () => 100),
      builder: (context, snapshot) {
        return AnimatedSwitcher(
            duration: Duration(milliseconds: 900),
            child: _splashLodingWidget(snapshot),
        );
        }
    );
  }
  
  StatelessWidget _splashLodingWidget(AsyncSnapshot<Object> snapshot){
    if(snapshot.hasError) {print('로딩에 실패하였습니다. 다시 시도해주세요.'); return Text('Error');} //에러 발생
    else if(snapshot.hasData) {return CampusApp();} //정상 구동
    else{return SplashScreen();} //그외
  }
}
//홈 화면 클래스
class CampusApp extends StatelessWidget {
  const CampusApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: 'bamin'),
      debugShowCheckedModeBanner: false,  //디버그 표시 삭제
      routeInformationParser: BeamerParser(),
      routerDelegate: _routerDelegate,
    );
  }
}
