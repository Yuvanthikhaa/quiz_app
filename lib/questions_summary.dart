import 'package:flutter/material.dart';
import 'package:sec3/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (val) {
              return SummaryItem(val);
            },
          ).toList(),
        ),
      ),
    );
  }
}
