import 'package:flutter/material.dart';
import 'package:proyectone/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: MyWidget(
          colors: [
             Color.fromARGB(255, 0, 0, 255), // Blue
             Color.fromARGB(255, 0, 128, 255), // Light Blue
             Color.fromARGB(255, 0, 64, 255), // Medium Blue
             Color.fromARGB(255, 0, 0, 128), // 
          ],
        )
      ),
    ),
  );
}
