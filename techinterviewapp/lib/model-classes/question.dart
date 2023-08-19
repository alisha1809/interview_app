// models/question.dart
import './answer.dart';

class Question {
  final String id;
  final String title;
  final List<Answer> answers;

  Question({required this.id, required this.title, required this.answers});
}
