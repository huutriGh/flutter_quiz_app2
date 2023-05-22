import 'package:flutter/material.dart';
import 'package:quiz_app/screen/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
