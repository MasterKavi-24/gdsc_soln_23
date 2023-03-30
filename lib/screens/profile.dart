import 'package:flutter/material.dart';
import 'package:gdsc_soln_23/screens/home.dart';
import 'package:gdsc_soln_23/screens/intro.dart';
import 'package:gdsc_soln_23/screens/login.dart';
import 'package:gdsc_soln_23/services/shared_prefs.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                SharedPrefs.saveBool("isLoggedIn", false);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Intro()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.logout,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
          )
        ),
    );
  }
}
