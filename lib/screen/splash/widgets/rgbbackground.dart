import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

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
                Color.fromARGB(179, 141, 0, 55),
                Color.fromARGB(255, 128, 0, 49),
              ]
          ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset('assets/res/new_anim.json'),
        ],
          )
      ),
    );
  }
}
