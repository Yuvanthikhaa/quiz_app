import 'package:flutter/material.dart';
//import 'package:sec3/startscreen.dart';
import 'package:sec3/quiz.dart';
import 'package:sec3/quiz1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Quiz1());
  }
}
