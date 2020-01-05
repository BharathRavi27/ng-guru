// import 'package:angular_guru/screens/auth/login.dart';
// import 'package:angular_guru/screens/auth/register.dart';
// import 'package:flutter/material.dart';

// class Authenticate extends StatefulWidget {
//   @override
//   _AuthenticateState createState() => _AuthenticateState();
// }

// class _AuthenticateState extends State<Authenticate> {
//   @override
//   bool showSignIn = false;

//   void toggleView() {
//     setState(() {
//       showSignIn = !showSignIn;
//     });
//   }

//   Widget build(BuildContext context) {
//     if (showSignIn) {
//       return LoginPage(toggleView: toggleView);
//     } else {
//       return RegisterPage(toggleView: toggleView);
//     }
//     // return Container(child: Register());
//   }
// }

import 'package:angular_guru/screens/auth/login.dart';
import 'package:angular_guru/screens/auth/register.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return LoginPage(toggleView: toggleView);
    } else {
      return RegisterPage(toggleView: toggleView);
    }
    // return Container(child: Register());
  }
}
