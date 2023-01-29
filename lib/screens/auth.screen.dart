import 'package:campus_community/screens/start/intro_page.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(children: [
        IntroPage(),
        Container(color: Colors.accents[2],),
        Container(color: Colors.accents[5],),
      ],
      ),
    );
  }
}
