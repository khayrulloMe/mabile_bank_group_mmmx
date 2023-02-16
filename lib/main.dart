import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mabile_bank_group_mmmx/screen/home/home_screen.dart';
import 'package:mabile_bank_group_mmmx/screen/intro/intro_screen.dart';
import 'package:mabile_bank_group_mmmx/screen/sign_in_verify/sign_in_verify.dart';
import 'package:mabile_bank_group_mmmx/screen/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      routes: {
        SignInVerifyScreen.route:(context)=>const SignInVerifyScreen(),
        HomeScreen.route:(context)=>const HomeScreen(),
        IntroScreen.root:(context)=>const IntroScreen(),
      },
    );
  }
}
