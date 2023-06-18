import 'package:flutter/material.dart';
import 'package:sec3/question_screen.dart';
import 'package:sec3/startscreen.dart';
import 'package:sec3/data/questions.dart';

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
        selectedans = [];
        activescreen = 'start-screen';
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
    } else {
      screenwidget = Startscreen(switchscreen);
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
