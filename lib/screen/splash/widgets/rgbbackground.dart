import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:mabile_bank_group_mmmx/utils/style_static.dart';

class SplashBackground extends StatelessWidget {
  const SplashBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
              StaticColors.secondaryRedColor,
                StaticColors.primaryRedColor,
              ]
          ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/res/new_anim.json'),
        ],
          ),
      );

  }
}
