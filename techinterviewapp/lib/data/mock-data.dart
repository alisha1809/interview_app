// data/mock_data.dart
import 'package:techinterviewapp/model-classes/question.dart';
import 'package:techinterviewapp/model-classes/answer.dart';

List<Question> mockQuestions = [
  Question(
    id: '1',
    title: 'What is Flutter?',
    answers: [
      Answer(
        id: '1',
        text: 'Flutter is a UI toolkit by Google...',
        audioUrl: 'url_to_audio_file', spokenText: '',
      ),
      // Add more answers...
    ],
  ),
  // Add more questions...
];
