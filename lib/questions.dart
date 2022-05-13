import 'package:flutter/material.dart';
import 'question_bank.dart';

List<QuestionBank> questionList = [
  QuestionBank('Taj Mahal is in Agra', 'True'),
  QuestionBank('Red Fort is in Mumbai', 'False'),
  QuestionBank('PM of India is Narendra Modi', 'True'),
  QuestionBank('Hindi is the National Language of India', 'False'),
  QuestionBank('Wright Brothers inventor the Airplane', 'True')
];

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  _QuestionsState createState() => _QuestionsState();
}
class _QuestionsState extends State<Questions> {



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Center(
        child: Text(
          questionList[2].question,
          style: const TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}