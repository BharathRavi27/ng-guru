import 'package:angular_guru/screens/quiz/quiz_list.dart';
import 'package:angular_guru/services/auth_service.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Angular Guru'),
        backgroundColor: Colors.lightBlue[700],
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('logout'),
            textColor: Colors.white,
            onPressed: () async {
              await _auth.signOut();
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizList()));
                },
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
                  child: Row(
                    children: <Widget>[
                      Image(
                          image: AssetImage('assets/logo.png'),
                          height: 70.0,
                          width: 70.0),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Angular Quizzes',
                        style: TextStyle(fontSize: 26.0, fontFamily: 'Popins'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            // Card(
            //   child: Padding(
            //     padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
            //     child: Row(
            //       children: <Widget>[
            //         Image(
            //             image: AssetImage('assets/logo.png'),
            //             height: 50.0,
            //             width: 50.0),
            //         SizedBox(
            //           width: 20.0,
            //         ),
            //         Text('Angular Quiz')
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
