import 'dart:developer';

import 'package:angular_guru/models/quiz.dart';
import 'package:angular_guru/screens/quiz/quiz_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override

  // [{
  //   'short': 'What is angular ?',
  //   'long': 'What in following is accurate about Angular?',
  //   'tag': '#basic',
  //   'difficultyLevel': 100
  // }
  // ];
  Widget build(BuildContext context) {
    final List<AngularQuiz> _quizes =
        Provider.of<List<AngularQuiz>>(context) ?? [];
    return Container(
        margin: EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: _quizes.length,
          itemBuilder: (quiz, index) => Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red[_quizes[index].difficultyLevel],
              ),
              title: Text(_quizes[index].short),
              subtitle: Text(_quizes[index].tag),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            QuizDetails(quiz: _quizes[index])));
              },
            ),
          ),
        )
        //  ListTile(
        //   leading: CircleAvatar(
        //     backgroundColor: Colors.green[100],
        //   ),
        //   title: Text('What is angular ?'),
        //   subtitle: Text('#basic'),
        //   onTap: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => QuizDetails()));
        //   },
        // ),
        );
  }
}
