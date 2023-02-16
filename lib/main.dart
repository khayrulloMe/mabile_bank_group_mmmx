import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mabile_bank_group_mmmx/screen/sign_up/sign_up_screen.dart';
import 'package:mabile_bank_group_mmmx/utils/style_static.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Manrope",
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const SignUpScreen(),
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
        title: Text(
          widget.title,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(

                    color: StaticColors.secondaryRedColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: StaticColors.primaryRedColor,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add,color: StaticColors.secondaryWhiteColor,),
      ),
    );
  }
}
