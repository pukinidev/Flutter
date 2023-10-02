import 'package:flutter/material.dart';
import 'package:proyectone/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: MyWidget(
          colors: [
            Color.fromARGB(255, 255, 192, 203),
            Color.fromARGB(255, 230, 230, 250),
            Color.fromARGB(255, 152, 255, 152),
            Color.fromARGB(255, 173, 216, 230)
          ],
        )
      ),
    ),
  );
}
