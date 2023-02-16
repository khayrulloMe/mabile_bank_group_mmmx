import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mabile_bank_group_mmmx/screen/intro/widgets/background_txt_and_logo.dart';
import 'package:mabile_bank_group_mmmx/screen/intro/widgets/language_btn.dart';

class IntroScreen extends StatefulWidget {
  static const root = "intro";

  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return Stack(
          children: [
            Background_Txt_Logo(),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 32),
                    height: 60,
                    width: double.infinity,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LanguageBtn(country: "uz",country_img: "assets/images/uz.png"),
                          LanguageBtn(country:"ru",country_img:"assets/images/ru.png"),
                          LanguageBtn(country:"en",country_img:"assets/images/eng.png")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}
