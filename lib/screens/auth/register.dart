import 'package:angular_guru/Animation/FadeAnimation.dart';
import 'package:angular_guru/screens/categories/categories.dart';
import 'package:angular_guru/services/auth_service.dart';
import 'package:angular_guru/shared/loading.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final Function toggleView;
  RegisterPage({this.toggleView});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final AuthService _auth = AuthService();

  final _formkey = GlobalKey<FormState>();

  bool loading = false;

  // text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            body: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Colors.lightBlue[700],
                Colors.lightBlue[800],
                Colors.lightBlue[400]
              ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                            1,
                            Text(
                              "ng-register",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        FadeAnimation(
                            1.3,
                            Text(
                              "Master Angular",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60))),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 30,
                            ),
                            FadeAnimation(
                                1.4,
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Color.fromRGBO(1, 87, 155, .2),
                                            blurRadius: 20,
                                            offset: Offset(0, 10))
                                      ]),
                                  child: Form(
                                    key: _formkey,
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color:
                                                          Colors.grey[200]))),
                                          child: TextFormField(
                                            validator: (val) => val.isEmpty
                                                ? 'Enter an E-mail'
                                                : null,
                                            onChanged: (val) {
                                              setState(() => email = val);
                                            },
                                            decoration: InputDecoration(
                                                hintText:
                                                    "Email or Phone number",
                                                hintStyle: TextStyle(
                                                    color: Colors.grey),
                                                border: InputBorder.none),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color:
                                                          Colors.grey[200]))),
                                          child: TextFormField(
                                            validator: (val) => val.length < 6
                                                ? 'Enter atleast 6 charectors'
                                                : null,
                                            onChanged: (val) {
                                              setState(() => password = val);
                                            },
                                            decoration: InputDecoration(
                                                hintText: "Password",
                                                hintStyle: TextStyle(
                                                    color: Colors.grey),
                                                border: InputBorder.none),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            FadeAnimation(
                                1.5,
                                Text(
                                  "Forgot Password?",
                                  style: TextStyle(color: Colors.grey),
                                )),
                            SizedBox(
                              height: 40,
                            ),
                            FadeAnimation(
                                1.6,
                                Container(
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.deepOrange[900]),
                                  child: GestureDetector(
                                    onTap: () async {
                                      if (_formkey.currentState.validate()) {
                                        setState(() {
                                          loading = true;
                                        });
                                        dynamic result = await _auth
                                            .registerWithEmailAndPassword(
                                                email, password);
                                        if (result == null) {
                                          print("Errorr!!!");
                                          setState(() {
                                            error = 'Error!!';
                                            loading = false;
                                          });
                                        }
                                      } else {}

                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) => Categories()));
                                    },
                                    child: Center(
                                      child: Text(
                                        "Register",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 50,
                            ),
                            FadeAnimation(
                                1.7,
                                Text(
                                  "Continue with social media",
                                  style: TextStyle(color: Colors.grey),
                                )),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: FadeAnimation(
                                      1.8,
                                      Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.blue),
                                        child: Center(
                                          child: GestureDetector(
                                            onTap: () {
                                              widget.toggleView();
                                            },
                                            child: Text(
                                              "login",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Expanded(
                                  child: FadeAnimation(
                                      1.9,
                                      Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.black),
                                        child: Center(
                                          child: Text(
                                            "Github",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
