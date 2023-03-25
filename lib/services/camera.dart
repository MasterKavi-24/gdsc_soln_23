import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

void takeSelfie(BuildContext context) async {
  final cameras = await availableCameras();
  final firstCamera = cameras.first;
}

