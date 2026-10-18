import 'package:flutter/material.dart';

import 'data/questions.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.onStart});
  final VoidCallback onStart;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.psychology_alt_rounded,
            size: 100,
            color: Color(0xFF6554C0),
          ),
          const SizedBox(height: 24),
          Text(
            'Otestuj svoje znalosti',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            '${questions.length} otázok o Flutteri. Vyber vždy jednu odpoveď a na konci si pozri výsledky.',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          FilledButton.icon(
            onPressed: onStart,
            icon: const Icon(Icons.arrow_forward),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
