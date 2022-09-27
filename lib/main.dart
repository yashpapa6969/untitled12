import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled12/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
            // Load a Lottie file from your assets


            // Load a Lottie file from a remote url


            // Load an animation and its images from a zip file
          //  Lottie.asset('assets/space_jam.zip'),

      );
  }
}