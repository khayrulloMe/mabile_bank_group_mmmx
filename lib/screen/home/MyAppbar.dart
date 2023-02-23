import 'package:flutter/material.dart';

import 'appbar.dart';

class MyFlexiableAppBar extends StatelessWidget {
  const MyFlexiableAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100,),
          Text("overal balans",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
          Container(
            height: 70,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Image(
                          height: 30,
                          width: 30,
                          image: AssetImage("assets/images/chat.png")
                      ),
                      SizedBox(width: 10,),
                      Text(
                          "\u002420,914.33",
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w800,
                              fontSize: 24.0)
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Image(
                          height: 30,
                          width: 30,
                          image: AssetImage("assets/images/chat.png")
                      ),
                      SizedBox(width: 10,),
                      Image(
                          height: 30,
                          width: 30,
                          image: AssetImage("assets/images/chat.png")
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return HeaderAppBar(name: "mbmgkkb");
                }),
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/anor.png"),
          )
      ),
    );
  }
}