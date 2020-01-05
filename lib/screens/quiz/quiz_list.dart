import 'package:angular_guru/screens/quiz/quiz.dart';
import 'package:flutter/material.dart';

class QuizList extends StatefulWidget {
  @override
  _QuizListState createState() => _QuizListState();
}

class _QuizListState extends State<QuizList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzes'),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Quiz(),
    );
  }
}
