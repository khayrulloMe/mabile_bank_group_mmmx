import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Background_Txt_Logo extends StatelessWidget {
  const Background_Txt_Logo({Key? key}) : super(key: key);

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
              ])),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Image(
                height: 250,
                width: 250,
                image: AssetImage("assets/images/anor_logo.png")
            ),
            const SizedBox(height: 40,),
            Text("welcome to",
              style: GoogleFonts.manrope(
                  textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal
                  ),
                  color: Colors.white
              ),
            ),
            const SizedBox(height: 20,),
            Text("Anorbank",
              style: GoogleFonts.manrope(
                  textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.white
                  )
              ),
            ),
            const SizedBox(height: 20,),
            Text("chose app language",
              style: GoogleFonts.manrope(
                  textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white
                  )
              ),),
          ],
        ),
      ),
    );
  }
}
