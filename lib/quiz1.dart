import 'package:flutter/material.dart';
import 'package:sec3/question_screen.dart';
import 'package:sec3/startscreen.dart';
import 'package:sec3/data/questions.dart';
import 'package:sec3/result_screen.dart';

class Quiz1 extends StatefulWidget {
  const Quiz1({Key? key}) : super(key: key);

  @override
  State<Quiz1> createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  List<String> selectedans = [];

  var activescreen = 'start-screen';
  @override
  void initState() {
    activescreen = 'start-screen';
    super.initState();
  }

  void chooseans(String answer) {
    selectedans.add(answer);
    if (selectedans.length == questions.length) {
      setState(() {
        //selectedans = [];
        activescreen = 'results-screen';
      });
    }
  }

  void switchscreen() {
    setState(() {
      activescreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenwidget = Startscreen(switchscreen);
    if (activescreen == 'questions-screen') {
      screenwidget = Questions(
        onselectans: chooseans,
      );
    }
    if (activescreen == 'results-screen') {
      screenwidget = ResultsScreen(
        chosenans: selectedans,
      );
    }
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(color: Colors.deepPurple),
            child: activescreen == 'start-screen'
                ? Startscreen(switchscreen)
                : Questions(
                    onselectans: chooseans,
                  )));
  }
}
