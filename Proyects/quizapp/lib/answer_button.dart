import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';

class AnswerButton extends StatefulWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.action, required this.indexNumber});

  final String answerText;
  final void Function() action;
  final int indexNumber;

  @override
  State<AnswerButton> createState() => _AnswerButton();
}

class _AnswerButton extends State<AnswerButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.action,
      style: ButtonStyle(
        backgroundColor: getColor(const Color.fromARGB(255, 51, 65, 145)),
      ),
      child: Text(
        widget.answerText,
        textAlign: TextAlign.center,
      ),
    );
  }

  MaterialStateProperty<Color> getColor(Color currentColor) {
    Color correctAnswer = Colors.green;
    Color incorrectAnswer = Colors.red;

    getColor(Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        if (widget.answerText == questions[widget.indexNumber].answers[0]) {
          return correctAnswer;
        } else {
          return incorrectAnswer;
        }
      } else {
        return currentColor;
      }
    }
    return MaterialStateProperty.resolveWith(getColor);
  }
}
