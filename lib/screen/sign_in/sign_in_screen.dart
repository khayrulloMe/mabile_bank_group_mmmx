import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Center(
            //     child: Text(
            //       "Sign Up",
            //       style: TextStyle(
            //           color: StaticColors.secondaryRedColor,
            //           fontSize: 24,
            //           fontWeight: FontWeight.bold),
            //     )),
            // SizedBox(
            //   height: 12,
            // ),
          ],
        ),
      ),
    );
  }
}
