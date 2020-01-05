import 'package:angular_guru/screens/quiz/quiz_details.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
      child: ListTile(
        title: Text('What is angular ?'),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => QuizDetails()));
        },
      ),
    );
  }
}
