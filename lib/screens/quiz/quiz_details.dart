import 'package:angular_guru/screens/quiz/quiz.dart';
import 'package:flutter/material.dart';

class QuizDetails extends StatefulWidget {
  @override
  _QuizDetailsState createState() => _QuizDetailsState();
}

class _QuizDetailsState extends State<QuizDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Text('What in following is accurate about Angular?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0)),
              SizedBox(height: 200.0),
              Card(
                child: ListTile(
                  title: const Text(
                      'Angular is a Singlr page application javascript framework'),
                  leading: Radio(
                    value: 1,
                    groupValue: 2,
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title:
                      const Text('Angular is Server side rendering framework'),
                  leading: Radio(
                    value: 1,
                    groupValue: 2,
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Angular is a php server'),
                  leading: Radio(
                    value: 1,
                    groupValue: 2,
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
