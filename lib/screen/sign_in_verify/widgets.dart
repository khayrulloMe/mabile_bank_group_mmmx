import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:mabile_bank_group_mmmx/utils/style_static.dart';

class TopOfVerifyScreen extends StatelessWidget {
  const TopOfVerifyScreen({Key? key, required}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/verify_phone.png",
          width: 150,
        ),
        const Text(
          "Verification",
          style: TextStyle(fontSize: 28),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          "Please enter the SMS code \nto verify your phone number",
          style:
              TextStyle(fontSize: 18, color: Color.fromARGB(255, 90, 90, 90)),
        ),
      ],
    );
  }}

class VerifyCodeTextField extends StatefulWidget {
  final Function(String) onSubmit;

  const VerifyCodeTextField({Key? key, required this.onSubmit})
      : super(key: key);

  @override
  State<VerifyCodeTextField> createState() => _VerifyCodeTextFieldState();
}
class _VerifyCodeTextFieldState extends State<VerifyCodeTextField> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        OtpTextField(
          numberOfFields: 6,
          keyboardType: TextInputType.number,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          autoFocus: true,
          disabledBorderColor: StaticColors.primaryRedColor,
          cursorColor: StaticColors.primaryRedColor,
          fillColor: StaticColors.primaryRedColor,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
          enabledBorderColor: StaticColors.secondaryRedColor,
          focusedBorderColor: StaticColors.primaryRedColor,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          showFieldAsBox: true,
          clearText: true,
          textStyle: const TextStyle(
              fontWeight: FontWeight.bold, color: StaticColors.primaryRedColor),
          onCodeChanged: (String code) {},
          onSubmit: (String verificationCode) {
            widget.onSubmit.call(verificationCode);
          },
        ),
      ],
    ));
  }
}

class VerifyTimer extends StatefulWidget {


 const VerifyTimer({Key? key}) : super(key: key);

  @override
  State<VerifyTimer> createState() => _VerifyTimerState();
}
class _VerifyTimerState extends State<VerifyTimer> {
  int time = 61;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        time = time - 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 24,
        ),
        Text(
          "Code arrive within: $time",
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        ),
        TextButton(
            onPressed: () {
              time = 60;
            },
            child: const Text("Resent"))
      ],
    );
  }
}
