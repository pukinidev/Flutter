import 'package:flutter/material.dart';
import 'package:quizapp/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question?',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: 'Answer 1', 
            action: () {}
          ),
          AnswerButton(
            answerText: 'Answer 2', 
            action: () {}
          ),
          AnswerButton(
            answerText: 'Answer 3', 
            action: () {}
          ),
        ],
      ),
    );
  }
}
