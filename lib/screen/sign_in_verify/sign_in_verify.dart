import 'package:flutter/material.dart';
import 'package:mabile_bank_group_mmmx/screen/home/home_screen.dart';
import 'package:mabile_bank_group_mmmx/screen/sign_in_verify/widgets.dart';

class SignInVerifyScreen extends StatelessWidget {
  static const String route = "sign_in_verify";

  const SignInVerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("SignInVerifyScreen"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TopOfVerifyScreen(),
            VerifyCodeTextField(
              onSubmit: (String val) {
                if(val.length==6){
                  Navigator.pushReplacementNamed(context, HomeScreen.route);
                }
              },
            ),
            const VerifyTimer()
          ],
        ),
      ),
    );
  }
}
