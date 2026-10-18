import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: summaryData.map((data) {
          final correct = data['user_answer'] == data['correct_answer'];
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: correct
                      ? Colors.green.shade100
                      : Colors.red.shade100,
                  child: Text('${(data['question_index'] as int) + 1}'),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        '${correct ? "Správne" : "Nesprávne"} · Tvoja odpoveď: ${data['user_answer']}',
                      ),
                      Text(
                        'Správna odpoveď: ${data['correct_answer']}',
                        style: TextStyle(color: Colors.green.shade800),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
