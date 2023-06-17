import 'package:flutter/material.dart';
import 'package:sec3/button.dart';
import 'package:sec3/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    final currentquestion = questions[0];
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
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            ...currentquestion.answers.map((item) {
              //the three dots pull the values out of the iterable(list) and presents them as comma separated values
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Buttonn(anstext: item, ontap: () {}),
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
