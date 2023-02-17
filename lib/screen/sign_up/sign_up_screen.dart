import 'package:flutter/material.dart';
import 'package:mabile_bank_group_mmmx/utils/style_static.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var numberController = TextEditingController();
  TextEditingController dateinput = TextEditingController();
  bool _isHidden = true;
  String radioButtonItem = ' ';
  int id = 1;
  String? gender;
  final dayFormater = MaskTextInputFormatter(mask: "## / ## / ####");
  final phoneFormater = MaskTextInputFormatter(mask: " +998 - " + "## - ### - ## - ##");

  var maskFormatter = new MaskTextInputFormatter(
      mask: '+ (998) (##) ###-##-##',
      filter: { "#": RegExp(r'[0-9]') },
      type: MaskAutoCompletionType.lazy
  );

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 16,
                ),
                const Center(
                    child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: StaticColors.secondaryRedColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                )),
                const SizedBox(
                  height: 12,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    //      padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.only(top: 12, left: 22),
                    child: Container(
                      child: const Text(
                        "First name",
                        style: TextStyle(color: Colors.black),
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.only(
                    left: 22,
                    right: 22,
                  ),
                  child: TextFormField(
                    cursorColor: StaticColors.primaryRedColor,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          borderSide: BorderSide(
                              color: StaticColors.primaryRedColor, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      focusColor: StaticColors.primaryRedColor,
                      hintText: ' ',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    //      padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.only(top: 12, left: 22),
                    child: Container(
                      child: const Text(
                        "Last name",
                        style: TextStyle(color: Colors.black),
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.only(
                    left: 22,
                    right: 22,
                  ),
                  child: TextFormField(
                    cursorColor: StaticColors.primaryRedColor,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          borderSide: BorderSide(
                              color: StaticColors.primaryRedColor, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      focusColor: StaticColors.primaryRedColor,
                      hintText: ' ',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    //      padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.only(top: 12, left: 22),
                    child: Container(
                      child: const Text(
                        "Date of birth",
                        style: TextStyle(color: Colors.black),
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.only(
                    left: 22,
                    right: 22,
                  ),
                  child: TextFormField(
                    controller: numberController,
                    inputFormatters: [dayFormater],
                    cursorColor: StaticColors.primaryRedColor,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          borderSide: BorderSide(
                              color: StaticColors.primaryRedColor, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      focusColor: StaticColors.primaryRedColor,
                      hintText: '  12 / 05 / 2020',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    //      padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.only(top: 12, left: 22),
                    child: Container(
                      child: const Text(
                        "Phone Number",
                        style: TextStyle(color: Colors.black),
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.only(
                    left: 22,
                    right: 22,
                  ),
                  child: TextFormField(
                    inputFormatters: [maskFormatter],
                    cursorColor: StaticColors.primaryRedColor,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          borderSide: BorderSide(
                              color: StaticColors.primaryRedColor, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      focusColor: StaticColors.primaryRedColor,
                      hintText: '  + (998) (##) ### - ## - ## ',
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(top: 12, left: 22),
                    child: Container(
                      child: Text(
                        "Password",
                        style: TextStyle(color: Colors.black),
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.only(
                    left: 22,
                    right: 22,
                  ),
                  child: TextFormField(
                    obscureText: _isHidden,
                    cursorColor: StaticColors.primaryRedColor,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          borderSide: BorderSide(
                              color: StaticColors.primaryRedColor, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      focusColor: StaticColors.primaryRedColor,
                      hintText: ' ',
                      suffix: InkWell(
                        onTap: _togglePasswordView,
                        child: Container(
                          margin: const EdgeInsets.only(
                            right: 16,
                          ),
                          child: Icon(
                            _isHidden ? Icons.visibility_off : Icons.visibility,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    //      padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.only(top: 12, left: 24),
                    child: Container(
                      child: const Text(
                        "Gender",
                        style: TextStyle(color: Colors.black),
                      ),
                    )),
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Radio(
                            activeColor: StaticColors.secondaryRedColor,
                            value: 1,
                            groupValue: id,
                            onChanged: (val) {
                              setState(() {
                                radioButtonItem = 'male';
                                id = 1;
                              });
                            },
                          ),
                          Text(
                            'male',
                            style: new TextStyle(fontSize: 17.0),
                          ),
                          Radio(
                            activeColor: StaticColors.secondaryRedColor,
                            value: 2,
                            groupValue: id,
                            onChanged: (val) {
                              setState(() {
                                radioButtonItem = 'female';
                                id = 2;
                              });
                            },
                          ),
                          const Text(
                            'female',
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                        'Continue',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    const SizedBox(
                      height: 24,
                    )
                  ],
                ),
              ]),
            )));
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
