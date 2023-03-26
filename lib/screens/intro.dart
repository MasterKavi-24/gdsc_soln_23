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
  String _status = 'Waiting...';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: IntroductionScreen(
        key: _introKey,
        pages: [
          PageViewModel(
              title: '',
              // bodyWidget: 
              // // VideoPlayer(path: "/assets/videos/vid1.mp4"),
              // Column(
              //   children: [
              //     Text(_status),
              //     ElevatedButton(
              //         onPressed: () {
              //           setState(() => _status = 'Going to the next page...');
              //           Future.delayed(const Duration(seconds: 3),
              //               () => _introKey.currentState?.next());
              //         },
              //         child: const Text('Start'))
              //   ],
              // )
              body: "",
              image: Container(
                child: Image(
                  image: AssetImage("assets/images/img1.jpg"),
                  fit: BoxFit.cover,
                )
                ),
              ),
          PageViewModel(
            title: "",
            body: "",
              image: Container(
                child: Image(image: AssetImage("assets/images/img2.jpg"),)
                ),
              ),
              // title: 'Page Two',
              // bodyWidget: VideoPlayer(path: "/assets/videos/vid2.mp4"),
        ],
        showSkipButton: true,
        skip: const Text("Skip"),
        next: const Text("Next"),
        back: const Text("Back"),
        done: const Text("Done"),
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
        }
      ),
    );
  }
}