import 'package:angular_guru/screens/quiz/quiz_details.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  List _quizes = [
    {
      'short': 'What is angular ?',
      'long': 'What in following is accurate about Angular?',
      'tag': '#basic',
      'difficultyLevel': 100
    },
    {
      'short': 'Latest Angular version',
      'long': 'Which in following is the latest stable major angular version',
      'tag': '#basic',
      'difficultyLevel': 800
    },
    {
      'short': 'What is angular ?',
      'long': 'What in following is accurate about Angular?',
      'tag': '#basic',
      'difficultyLevel': 100
    },
    {
      'short': 'Latest Angular version',
      'long': 'Which in following is the latest stable major angular version',
      'tag': '#basic',
      'difficultyLevel': 800
    },
    {
      'short': 'What is angular ?',
      'long': 'What in following is accurate about Angular?',
      'tag': '#basic',
      'difficultyLevel': 100
    },
    {
      'short': 'Latest Angular version',
      'long': 'Which in following is the latest stable major angular version',
      'tag': '#basic',
      'difficultyLevel': 800
    },
    {
      'short': 'What is angular ?',
      'long': 'What in following is accurate about Angular?',
      'tag': '#basic',
      'difficultyLevel': 100
    },
    {
      'short': 'Latest Angular version',
      'long': 'Which in following is the latest stable major angular version',
      'tag': '#basic',
      'difficultyLevel': 800
    },
    {
      'short': 'What is angular ?',
      'long': 'What in following is accurate about Angular?',
      'tag': '#basic',
      'difficultyLevel': 100
    },
    {
      'short': 'Latest Angular version',
      'long': 'Which in following is the latest stable major angular version',
      'tag': '#basic',
      'difficultyLevel': 800
    },
    {
      'short': 'Latest Angular version',
      'long': 'Which in following is the latest stable major angular version',
      'tag': '#basic',
      'difficultyLevel': 800
    },
    {
      'short': 'What is angular ?',
      'long': 'What in following is accurate about Angular?',
      'tag': '#basic',
      'difficultyLevel': 100
    },
    {
      'short': 'Latest Angular version',
      'long': 'Which in following is the latest stable major angular version',
      'tag': '#basic',
      'difficultyLevel': 800
    },
  ];
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: _quizes.length,
          itemBuilder: (quiz, index) => Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red[_quizes[index]['difficultyLevel']],
              ),
              title: Text(_quizes[index]['short']),
              subtitle: Text(_quizes[index]['tag']),
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
