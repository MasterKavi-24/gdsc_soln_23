import 'package:flutter/material.dart';
import 'package:gdsc_soln_23/screens/intro.dart';
import 'package:gdsc_soln_23/screens/login.dart';
import 'package:flutter/services.dart';
import 'package:gdsc_soln_23/services/shared_prefs.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    //   SystemUiOverlay.bottom
    // ]);
    if (SharedPrefs.read("isLoggedIn") != true || SharedPrefs.read("isLoggedIn") != false) {
      SharedPrefs.saveBool("isLoggedin", false);
    }
    // SharedPrefs.remove("isLoggedIn");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Intro(),
    );
  }
}