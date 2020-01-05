import 'package:angular_guru/models/user.dart';
import 'package:angular_guru/screens/auth/auth.dart';
import 'package:angular_guru/screens/categories/categories.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    if (user == null) {
      return Authenticate();
    } else {
      return Categories();
    }
  }
}
