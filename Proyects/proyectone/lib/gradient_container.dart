import 'package:flutter/material.dart';
import 'package:proyectone/styled_text.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 221, 20, 218),
          Color.fromARGB(255, 204, 19, 201),
          Color.fromARGB(255, 128, 17, 126),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const Center(
        child: StyledText()
      ),
    );
  }
}
