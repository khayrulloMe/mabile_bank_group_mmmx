import 'dart:async';

import 'package:flutter/material.dart';

import '../intro/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    nextScreen(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(179, 141, 0, 55),
                    Color.fromARGB(255, 128, 0, 49),
                  ]
              )
            ),
          );
        }
      ),
    );
  }

  nextScreen(BuildContext context) async{
    Timer.periodic(Duration(seconds: 3), (timer) {
      Navigator.pushReplacementNamed(context, IntroScreen.id);
    });
  }
}
