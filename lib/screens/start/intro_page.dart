import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Campus App',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.green),
            ), //앱 제목
            ExtendedImage.asset('assets/images/test.png'), //이미지 경로
            Text('협성대 커뮤니티 어플리케이션',
              style: TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.w500),
            ),
            Text('협성대학교 커뮤니티 어플리케이션.\n 재학생들은 이용해주세요.',
              style: TextStyle(fontSize: 13),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(
                    onPressed: (){},
                    child: Text('재학생 인증하고 시작하기',
                      style: TextStyle(
                        color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
}