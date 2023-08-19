// screens/question_details_screen.dart
import 'package:flutter/material.dart';
import 'package:techinterviewapp/model-classes/question.dart';
import './audioplayer.dart';

class QuestionDetailsScreen extends StatelessWidget {
  final Question question;

  QuestionDetailsScreen({required this.question});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(question.title)),
      body: Column(
        children: [
          // Display question details here...
          for (var answer in question.answers)
            ListTile(
              title: Text(answer.text),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (ctx) => AudioPlayerScreen(audioUrl: answer.audioUrl, spokenText: '',),
                ));
              },
            ),
        ],
      ),
    );
  }
}
