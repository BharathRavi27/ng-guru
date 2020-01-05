import 'package:angular_guru/models/quiz.dart';
import 'package:angular_guru/screens/quiz/quiz.dart';
import 'package:angular_guru/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuizList extends StatefulWidget {
  @override
  _QuizListState createState() => _QuizListState();
}

class _QuizListState extends State<QuizList> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<AngularQuiz>>.value(
      value: DatabaseService().angularQuizzes,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Quizzes'),
          backgroundColor: Colors.lightBlue[900],
        ),
        body: Quiz(),
      ),
    );
  }
}
