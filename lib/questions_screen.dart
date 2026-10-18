import 'package:flutter/material.dart';

import 'data/questions.dart';
import 'models/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;
  late List<String> shuffledAnswers;

  @override
  void initState() {
    super.initState();
    shuffledAnswers = questions.first.getShuffledAnswers();
  }

  void answerQuestion(String answer) {
    // Posledná odpoveď prepne rodiča na výsledky.
    if (currentQuestionIndex + 1 < questions.length) {
      setState(() {
        currentQuestionIndex++;
        shuffledAnswers = questions[currentQuestionIndex].getShuffledAnswers();
      });
    }
    widget.onSelectAnswer(answer);
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuestionIndex];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Otázka ${currentQuestionIndex + 1} z ${questions.length}',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 12),
        LinearProgressIndicator(
          value: (currentQuestionIndex + 1) / questions.length,
        ),
        const SizedBox(height: 24),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  question.text,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 28),
                ...shuffledAnswers.map(
                  (answer) => AnswerButton(
                    answer: answer,
                    onTap: () => answerQuestion(answer),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
