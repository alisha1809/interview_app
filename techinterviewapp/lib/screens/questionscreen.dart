// screens/question_list_screen.dart
import 'package:flutter/material.dart';
import 'package:techinterviewapp/data/mock-data.dart';
import './audioplayer.dart';
import 'answerscreen.dart';

class QuestionListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Interview Questions')),
      body: ListView.builder(
        itemCount: mockQuestions.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text(mockQuestions[index].title),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => QuestionDetailsScreen(question: mockQuestions[index]),
              ));
            },
          );
        },
      ),
    );
  }
}
