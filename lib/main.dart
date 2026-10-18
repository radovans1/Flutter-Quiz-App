import 'package:flutter/material.dart';

import 'quiz.dart';

void main() => runApp(const QuizApp());

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Quiz',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF6554C0)),
        scaffoldBackgroundColor: const Color(0xFFF5F3FC),
      ),
      home: const Quiz(),
    );
  }
}
