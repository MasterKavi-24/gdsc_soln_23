import 'package:flutter/material.dart';
import 'package:gdsc_soln_23/screens/login.dart';
import 'package:gdsc_soln_23/screens/home.dart';
import 'package:gdsc_soln_23/services/shared_prefs.dart';

void checkLogin(BuildContext context, String username, String password) async {
  if (username == 'admin' && password == 'admin') {
    bool isLoggedIn = await SharedPrefs.readBool("isLoggedIn");
    if (isLoggedIn == false) {
      SharedPrefs.saveBool("isLoggedIn", true);
    }
    print(isLoggedIn);
    Navigator.pushReplacement(
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
