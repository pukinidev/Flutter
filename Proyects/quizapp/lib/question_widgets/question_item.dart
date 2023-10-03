import 'package:flutter/material.dart';
import 'package:quizapp/question_widgets/question_icon.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        /*
        To align all items to the left
        add CrossAxisAligment.start

        For example in this case, we need to add it in both because
        it won't work if it's added only to the Row or the Column widget
        
        */
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIcon(
              isCorrectAnswer: isCorrectAnswer,
              questionIndex: itemData['question_index'] as int
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  /*
                  Dart identifies itemData['user_answer'] as an Object so it has be casted to String
                  because that's the type of the first parameter that the Widget Text recieves.
                  */
                  itemData['user_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 202, 171, 252),
                  ),
                ),
                Text(
                  itemData['correct_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 101, 254, 246),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
