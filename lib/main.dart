import 'package:flutter/material.dart';
import 'home.dart';
import 'camera.dart';

import 'dart:async';
// import 'dart:io';

import 'package:camera/camera.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;

  runApp(MaterialApp(
    title: 'Recognize',
    theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Poppins'),
    home: Home(),
    routes: {
      '/home': (context) => Home(),
      '/camera': (context) => Camera(
            camera: firstCamera,
          ),
    },
  ));
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
