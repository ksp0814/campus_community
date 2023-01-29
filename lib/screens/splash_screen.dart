import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, //배경색
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //이미지 center 정렬
          children: <Widget> [
            ExtendedImage.asset('assets/images/test.png'), //사용할 스플래시 이미지
            CircularProgressIndicator(color: Colors.black,) //로딩바
          ],
        ),
      ),
    );
  }
}
