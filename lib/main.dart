import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mabile_bank_group_mmmx/screen/home/home_screen.dart';
import 'package:mabile_bank_group_mmmx/screen/intro/intro_screen.dart';
import 'package:mabile_bank_group_mmmx/screen/sign_in/sign_in_screen.dart';
import 'package:mabile_bank_group_mmmx/screen/sign_in_verify/sign_in_verify.dart';
import 'package:mabile_bank_group_mmmx/screen/splash/splash_screen.dart';
import 'package:mabile_bank_group_mmmx/utils/style_static.dart';

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
        IntroScreen.route:(context)=>const IntroScreen(),
        SignInScreen.route:(context)=>const SignInScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
