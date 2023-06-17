import 'package:flutter/material.dart';
import 'package:sec3/question_screen.dart';
import 'package:sec3/startscreen.dart';
//import 'package:sec3/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activescreen;
  @override
  void initState() {
    activescreen = Startscreen(switchscreen);
    super.initState();
  }

  void switchscreen() {
    setState(() {
      activescreen = Questions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(color: Colors.deepPurple),
            child: activescreen));
  }
}
