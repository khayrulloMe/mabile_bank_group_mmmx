import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../utils/style_static.dart';

class SignInScreen extends StatelessWidget {
  static const String route = "sign_in";

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SignIn();
  }
}

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController dateinput = TextEditingController();
  bool _isHidden = true;
  var maskFormatter =  MaskTextInputFormatter(
      mask: '+# (###) ###-##-##',
      filter: { "#": RegExp(r'[0-9]') },
      type: MaskAutoCompletionType.lazy
  );
  @override
  void initState() {
    super.initState();
    dateinput.text = "";
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Center(
                child: Text(
              "Sign In",
              style: TextStyle(color: StaticColors.secondaryRedColor, fontSize: 24, fontWeight: FontWeight.bold),
            )),
            Expanded(
              child: Column(
                children: [
                  signItem("Phone number"),
                  passwordItem("Password", _isHidden, _togglePasswordView),
                ],
              ),
            ),
            buttonItem()
          ],
        ),
      ),
    );
  }
}

Column signItem(String text) {
  return Column(
    children: [
      const SizedBox(
        height: 12,
      ),
      Container(
          alignment: Alignment.topLeft,
          //      padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.only(top: 12, left: 22),
          child: Text(
            text,
            style: const TextStyle(color: Colors.black),
          )),
      Container(
        margin: const EdgeInsets.only(
          left: 22,
          right: 22,
        ),
        child: TextFormField(
          cursorColor: StaticColors.primaryRedColor,
          decoration: const InputDecoration(
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(14)), borderSide: BorderSide(color: StaticColors.primaryRedColor, width: 2)),
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(14))),
            focusColor: StaticColors.primaryRedColor,
            hintText: ' ',
          ),
        ),
      ),
    ],
  );
}

Column passwordItem(String text, bool isHidden, Function() onTap) {
  return Column(
    children: [
      Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(top: 12, left: 22),
          child: Text(
            text,
            style: const TextStyle(color: Colors.black),
          )),
      Container(
        margin: const EdgeInsets.only(
          left: 22,
          right: 22,
        ),
        child: TextFormField(),
      ),
    ],
  );
}

Column buttonItem() {
  return Column(
    children: [
      const SizedBox(
        height: 12,
      ),
      Container(
        width: double.infinity,
        height: 52,
        margin: const EdgeInsets.only(
          left: 22,
          right: 22,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: StaticColors.primaryRedColor,
        ),
        child: const Center(
            child: Text(
          'Enter',
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        )),
      ),
      const SizedBox(
        height: 24,
      )
    ],
  );
}
