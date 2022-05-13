import 'package:flutter/material.dart';
import 'app.dart';

void main() {
  runApp(const QuizApp());
}


class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0x202124FF),
          appBar: AppBar(
            title: const Text('Quizzer'),
            centerTitle: true,
            backgroundColor: const Color(0x23036AFF),
          ),
          body: const App()
      ),
    );
  }
}
