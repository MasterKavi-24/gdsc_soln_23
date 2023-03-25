// Create a flexible and responsive register page with the following features:
// username
// password
// profile picture
// bio
// email
// phone

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:gdsc_soln_23/camera_sample_offl.dart';

class Register extends StatelessWidget {
  // create usernameController and passwordController
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // Picturecontroller to get profile picture
  final TextEditingController picController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // create a field to get profile picture as pic
                  GestureDetector(
                    onTap: () async {
                      final cameras = await availableCameras();
                      final firstCamera = cameras.first;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TakePictureScreen(
                            camera: firstCamera,
                          ),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage(
                        'assets/images/default_dp.jpg',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: bioController,
                    decoration: InputDecoration(
                      hintText: 'Bio',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: 'Phone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Register");

                      // User user = User(
                      //   username: usernameController.text,
                      //   password: passwordController.text,
                      //   profilePicture: profilePictureController.text,
                      //   bio: bioController.text,
                      //   email: emailController.text,
                      //   phone: phoneController.text,
                      // );

                      // LoginService.register(user).then((value) {
                      //   if (value) {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => Home(),
                      //       ),
                      //     );
                      //   } else {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => Login(),
                      //       ),
                      //     );
                      //   }
                      // });
                    },
                    child: Text('Register'),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
