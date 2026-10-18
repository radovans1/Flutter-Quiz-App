import 'package:flutter/material.dart';

import 'data/questions.dart';
import 'questions_screen.dart';
import 'results_screen.dart';
import 'start_screen.dart';

enum QuizScreen { start, questions, results }

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  QuizScreen activeScreen = QuizScreen.start;
  final List<String> selectedAnswers = [];

  void startQuiz() {
    setState(() {
      selectedAnswers.clear();
      activeScreen = QuizScreen.questions;
    });
  }

  void chooseAnswer(String answer) {
    setState(() {
      selectedAnswers.add(answer);
      if (selectedAnswers.length == questions.length) {
        activeScreen = QuizScreen.results;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Widget screen = switch (activeScreen) {
      QuizScreen.start => StartScreen(onStart: startQuiz),
      QuizScreen.questions => QuestionsScreen(onSelectAnswer: chooseAnswer),
      QuizScreen.results => ResultsScreen(
        chosenAnswers: List.unmodifiable(selectedAnswers),
        onRestart: startQuiz,
      ),
    };
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Quiz'), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Padding(padding: const EdgeInsets.all(24), child: screen),
          ),
        ),
      ),
    );
  }
}
