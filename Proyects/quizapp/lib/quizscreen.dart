import 'package:flutter/material.dart';
import 'package:quizapp/quizcolumn.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.purple,
          Colors.indigo,
          Colors.indigoAccent,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const Center(
        child: QuizColumn(),
      ),
    );
  }
}
