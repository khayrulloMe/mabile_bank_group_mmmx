import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mabile_bank_group_mmmx/screen/sign_in_verify/sign_in_verify.dart';
import 'package:mabile_bank_group_mmmx/screen/splash/widgets/rgbbackground.dart';

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
            return const SplashBackground();
          }
      ),
    );
  }

 void nextScreen(BuildContext context) async {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      Navigator.pushReplacementNamed(context, IntroScreen.root);
    });
  }}
