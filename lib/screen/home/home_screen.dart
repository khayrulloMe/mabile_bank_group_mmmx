import 'package:flutter/material.dart';

import '../home_ali/loans.dart';
import '../sign_in/sign_in_screen.dart';
import 'MyAppbar.dart';
import 'appbar.dart';

class HomeScreen extends StatelessWidget {
  static const String route = "home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              title: MyAppBar(),
              pinned: true,
              expandedHeight: 400.0,
              flexibleSpace: FlexibleSpaceBar(
                background: MyFlexiableAppBar(),
              ),
            ),

            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                     Loans()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget pinnAppBar() {
    return Container(
      height: 80,
      width: double.infinity,
      child: Stack(
        children: [
          Row(
            verticalDirection: VerticalDirection.down,
            children: const [
              Icon(Icons.ice_skating),
              Text(
                "Anor Bank",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(Icons.ice_skating),
              Icon(Icons.ice_skating),
            ],
          )
        ],
      ),
    );
  }
}
