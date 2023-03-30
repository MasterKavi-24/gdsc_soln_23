import 'package:flutter/material.dart';
import 'package:gdsc_soln_23/screens/home.dart';
import 'package:gdsc_soln_23/screens/login.dart';
import 'package:gdsc_soln_23/services/shared_prefs.dart';
// import 'package:gdsc_soln_23/services/videoPlayer.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Intro extends StatefulWidget {
  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final _introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: IntroductionScreen(
          key: _introKey,
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Theme.of(context).colorScheme.secondary,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
          ),
          pages: [
            PageViewModel(
              title: "WELCOME",
              body:
                  "nǐ hǎo\t\t\t\t\t\t\t\t\t\thola\t\t\t\t\t\t\t\t\t\thello\t\t\t\t\t\t\t\t\t\tnamaste\t\t\t\t\t\t\t\t\t\tmárhaban\t\t\t\t\t\t\t\t\t\tolá\t\t\t\t\t\t\t\t\t\thyālō\t\t\t\t\t\t\t\t\t\tprivet\t\t\t\t\t\t\t\t\t\tko'nichiwa\t\t\t\t\t\t\t\t\t\tsata srī akāla\t\t\t\t\t\t\t\t\t\tguten tag\t\t\t\t\t\t\t\t\t\tnggoleki\t\t\t\t\t\t\t\t\t\tannyeong haseyo\t\t\t\t\t\t\t\t\t\tselamat siang\t\t\t\t\t\t\t\t\t\txin chào\t\t\t\t\t\t\t\t\t\tbonjour\t\t\t\t\t\t\t\t\t\tnamaskār\t\t\t\t\t\t\t\t\t\tvaṇakkam\t\t\t\t\t\t\t\t\t\tassalam u alaikum\t\t\t\t\t\t\t\t\t\tsalām",
              image: const Center(
                child: Icon(Icons.waving_hand, size: 50.0),
              ),
              decoration: const PageDecoration(
                bodyTextStyle: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  // set a nice font family
                  fontFamily: 'Roboto',
                ),
                titleTextStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            PageViewModel(
              title: '',
              body: "",
              image: Container(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Image(
                  image: AssetImage("assets/images/img1.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              decoration: const PageDecoration(
                pageColor: Colors.green,
                imageFlex: 10,
                bodyFlex: 1,
              ),
            ),
            PageViewModel(
              title: "",
              body: "",
              image: Container(
                height: double.maxFinite,
                width: double.maxFinite,
                child: Image(
                  image: AssetImage("assets/images/img2.jpg"),
                  fit: BoxFit.fill,
                ),),
              decoration: const PageDecoration(
                pageColor: Colors.green,
                imageFlex: 10,
                bodyFlex: 1,
              ),
            ),
          ],
          showBackButton: true,
          showNextButton: true,
          showDoneButton: true,
          back: const Icon(Icons.arrow_back),
          next: const Icon(Icons.arrow_forward),
          done: const Icon(Icons.done),
          onDone: () async {
            StatefulWidget fun = Login();
            if (await SharedPrefs.readBool("isLoggedIn")) {
              fun = Home();
            }
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => fun,
              ),
            );
          }),
    );
  }
}
