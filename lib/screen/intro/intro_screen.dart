import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatefulWidget {
  static const id = "intro";

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
            Container(
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
            ),
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
                          languageBtn("uz","assets/images/uz.png"),
                          languageBtn("uz","assets/images/uz.png"),
                          languageBtn("uz","assets/images/uz.png")
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

  Widget languageBtn(String country,String country_img){
    return Container(
      margin: const EdgeInsets.all(10),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 209, 0, 83),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: 20,
                width: 20,
                image: AssetImage(country_img)),
            Text(country,style: ,)
          ],
        ),
      ),
    );
  }
}
