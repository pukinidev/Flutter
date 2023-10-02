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
          color: const Color.fromARGB(150, 255, 255, 255),
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

        //icon and button
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,

          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ],
    );
  }
}
