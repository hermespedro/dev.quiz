// import 'package:DevQuiz/home/home_page.dart';
import 'package:dev_quiz/home/home_screen.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: HomeScreen(),
    );
  }
}
