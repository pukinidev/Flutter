import 'package:flutter/material.dart';

class QuizColumn extends StatefulWidget {
  const QuizColumn({super.key});

  @override
  State<QuizColumn> createState() => _QuizColumnState();
}

class _QuizColumnState extends State<QuizColumn> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
        ),

        const SizedBox(
          height: 60,
        ),

        const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
        ),

        const SizedBox(
          height: 30,
        ),

        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,

          ),
          child: const Text('Start Quiz'),
        )
      ],
    );
  }
}
