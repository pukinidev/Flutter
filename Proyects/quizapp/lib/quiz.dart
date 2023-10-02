import 'package:flutter/material.dart';
import 'package:quizapp/quiz_questions.dart';
import 'package:quizapp/quizcolumn.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.purple,
              Colors.indigo,
              Colors.indigoAccent,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: activeScreen == 'start-screen'
              ? QuizColumn(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
