import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageBtn extends StatelessWidget {
  String country="";
  String country_img="";

  LanguageBtn({Key? key,required this.country,required this.country_img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
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
              const SizedBox(width: 5,),
              Text(country,style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                color: Colors.white
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
