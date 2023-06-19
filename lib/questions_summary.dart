import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summarydata});
  final List<Map<String, Object>> summarydata;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
            children: summarydata.map((value) {
          return Row(
            children: [
              Text(((value['question_index'] as int) + 1).toString()),
              Expanded(
                child: Column(
                  children: [
                    Text((value['question']) as String),
                    SizedBox(
                      height: 10,
                    ),
                    Text((value['chosen_ans']) as String),
                    SizedBox(
                      height: 5,
                    ),
                    Text((value['correct_ans']) as String),
                  ],
                ),
              )
            ],
          );
        }).toList()),
      ),
    );
  }
}
