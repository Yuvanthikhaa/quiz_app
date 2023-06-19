import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sec3/data/questions.dart';
import 'package:sec3/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenans});
  final List<String> chosenans;
  List<Map<String, Object>> getsummary() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenans.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'chosen_ans': chosenans[i],
        'correct_ans': questions[i].answers[0]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summarydata = getsummary();
    final tot = questions.length;
    final correct = summarydata.where(
      (data) {
        return data['chosen_ans'] == data['corrct_ans'];
      },
    ).length;
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'You have answered $correct out of $tot questions correctly'),
              SizedBox(
                height: 30,
              ),
              QuestionSummary(summarydata: summarydata),
              SizedBox(
                height: 30,
              ),
              TextButton(onPressed: () {}, child: Text('data'))
            ],
          ),
        ));
  }
}
