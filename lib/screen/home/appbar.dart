import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        margin: const EdgeInsets.only(top: 60),
        height: 400,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10)),
          image: DecorationImage(
            image: AssetImage("assets/images/anor.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Over balans",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "1851",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return HeaderAppBar(name: "mbmgkkb");
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class HeaderAppBar extends StatelessWidget {
  String name = "";

  HeaderAppBar({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Card(
          color: Color.fromARGB(255, 166, 0, 66),
          margin: EdgeInsets.only(right: 20),
          child: SizedBox(
            height: 90,
            width: 90,
            child: Center(
              child: Image(
                height: 50,
                width: 50,
                image: AssetImage("assets/images/anor_logo.png"),
              ),
            ),
          ),
        ),
        Text(name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
      ],
    );
  }
}


class MyAppBar extends StatelessWidget {

  final double barHeight = 66.0;

  const MyAppBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
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
                Text("Anorbank")
              ],
            ),

          ),

          Container(),

          Container(
              child: Row(
                children: [
                  Image(
                      height: 30,
                      width: 30,
                      image: AssetImage("assets/images/chat.png")
                  ),
                  Image(
                      height: 30,
                      width: 30,
                      image: AssetImage("assets/images/chat.png")
                  ),
                ],
              )
          ),

        ],
      ),
    );
  }
}
