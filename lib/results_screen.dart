import 'package:flutter/material.dart';

import 'data/questions.dart';
import 'questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });
  final List<String> chosenAnswers;
  final VoidCallback onRestart;

  List<Map<String, Object>> get summaryData =>
      chosenAnswers.asMap().entries.map((entry) {
        final question = questions[entry.key];
        return <String, Object>{
          'question_index': entry.key,
          'question': question.text,
          'correct_answer': question.correctAnswer,
          'user_answer': entry.value,
        };
      }).toList();

  @override
  Widget build(BuildContext context) {
    final summary = summaryData;
    final correctCount = summary
        .where((row) => row['user_answer'] == row['correct_answer'])
        .length;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Výsledky kvízu',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 12),
        Text(
          'Správne odpovede: $correctCount z ${questions.length}',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        Text('Úspešnosť: ${(correctCount / questions.length * 100).round()} %'),
        const SizedBox(height: 24),
        Expanded(child: QuestionsSummary(summaryData: summary)),
        const SizedBox(height: 16),
        FilledButton.icon(
          onPressed: onRestart,
          icon: const Icon(Icons.refresh),
          label: const Text('Restart Quiz'),
        ),
      ],
    );
  }
}
