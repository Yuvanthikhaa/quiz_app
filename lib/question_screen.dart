import 'package:flutter/material.dart';
import 'package:sec3/button.dart';
import 'package:sec3/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key, required this.onselectans});

  final void Function(String answer) onselectans;
  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var questionindex = 0;

  void setquestion(String selectedans) {
    widget.onselectans(selectedans);
    setState(() {
      questionindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[questionindex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentquestion.text,
              style: GoogleFonts.lato(
                  color: Color.fromARGB(255, 201, 153, 251),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            ...currentquestion.shuffledans().map((answer) {
              //the three dots pull the values out of the iterable(list) and presents them as comma separated values
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Buttonn(
                      anstext: answer,
                      ontap: () {
                        setquestion(answer);
                      }),
                  SizedBox(
                    height: 10,
                  )
                ],
              );
            }),
            /* Buttonn(anstext: currentquestion.answers[0], ontap: () {}),
            SizedBox(
              height: 10,
            ),
            Buttonn(anstext: currentquestion.answers[1], ontap: () {}),
            SizedBox(
              height: 10,
            ),
            Buttonn(anstext: currentquestion.answers[2], ontap: () {}),
            SizedBox(
              height: 10,
            ),
            Buttonn(anstext: currentquestion.answers[3], ontap: () {}),
            SizedBox(
              height: 10,
            ),*/
          ],
        ),
      ),
    );
  }
}
