import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: data['user_answer'] == data['correct_answer']
                          ? Colors.green.shade200
                          : Colors.red.shade200,
                      shape: BoxShape.circle,
                    ),
                    height: 30.0,
                    width: 30.0,
                    alignment: Alignment.center,
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          data['user_answer'] as String,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.red.shade200,
                            fontSize: 10.0,
                          ),
                        ),
                        Text(
                          data['correct_answer'] as String,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.green.shade200,
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
