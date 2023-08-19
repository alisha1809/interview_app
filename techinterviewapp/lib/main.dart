// main.dart
import 'package:flutter/material.dart';
import 'package:techinterviewapp/screens/questionscreen.dart'; // Replace with your actual import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interview App with TTS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QuestionListScreen(), // Replace with your actual screen
    );
  }
}
