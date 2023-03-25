import 'package:flutter/material.dart';
import 'package:gdsc_soln_23/screens/login.dart';
import 'package:gdsc_soln_23/screens/home.dart';

void checkLogin(BuildContext context, TextEditingController usernameController, TextEditingController passwordController) {
  if (usernameController.text == 'admin' &&
      passwordController.text == 'admin') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  } else {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Login Failed'),
          content: Text('Please check your email and password'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
