import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mabile_bank_group_mmmx/utils/style_static.dart';

class Loans extends StatefulWidget {
  Loans({Key? key}) : super(key: key);

  @override
  State<Loans> createState() => _LoansState();
}

class _LoansState extends State<Loans> {
  bool x1 = false;
  final List<Map<String, dynamic>> _items = List.generate(
      50,
          (index) =>
      {
        "id": index,
        "title": "Item $index",
        "content":
        "This is the main content of item $index. It is very long and you have to expand the tile to see it."
      });

  void _removeItem(int id) {
    setState(() {
      _items.removeWhere((element) => element['id'] == id);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            children: [


              Align(
                heightFactor: 0.7,
                alignment: Alignment.topCenter,
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black.withAlpha(20),
                              blurRadius: 10.0),
                        ]),
                    height: 240,
                    child: ExpansionTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      childrenPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      expandedCrossAxisAlignment: CrossAxisAlignment.end,
                      maintainState: true,
                      title: Text("Prompt"),
                      // contents
                      children: [
                        Container(
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                width: 90,
                                decoration: BoxDecoration(
                                    color: StaticColors.primaryRedColor,
                                    borderRadius: BorderRadius.circular(16)),
                                child: const Center(
                                    child: Text(
                                      'Item 1',
                                      style:
                                      TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    )),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                width: 90,
                                decoration: BoxDecoration(
                                    color: StaticColors.primaryRedColor,
                                    borderRadius: BorderRadius.circular(16)),
                                child: const Center(
                                    child: Text(
                                      'Item 1',
                                      style:
                                      TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    )),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                width: 90,
                                decoration: BoxDecoration(
                                    color: StaticColors.primaryRedColor,
                                    borderRadius: BorderRadius.circular(16)),
                                child: const Center(
                                    child: Text(
                                      'Item 1',
                                      style:
                                      TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    )),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                width: 90,
                                decoration: BoxDecoration(
                                    color: StaticColors.primaryRedColor,
                                    borderRadius: BorderRadius.circular(16)),
                                child: const Center(
                                    child: Text(
                                      'Item 1',
                                      style:
                                      TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    )),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                width: 90,
                                decoration: BoxDecoration(
                                    color: StaticColors.primaryRedColor,
                                    borderRadius: BorderRadius.circular(16)),
                                child: const Center(
                                    child: Text(
                                      'Item 1',
                                      style:
                                      TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    )),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                heightFactor: 0.7,
                alignment: Alignment.topCenter,
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black.withAlpha(20),
                              blurRadius: 10.0),
                        ]),
                    height: 140,
                    child: ExpansionTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      childrenPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      expandedCrossAxisAlignment: CrossAxisAlignment.end,
                      maintainState: true,
                      title: Text("My Card"),
                      // contents
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(CupertinoIcons.add_circled),
                            Center(child: Center(child: Text("ADD BANK CARD",
                              style: TextStyle(
                                  color: StaticColors.primaryRedColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),)))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                heightFactor: 0.7,
                alignment: Alignment.topCenter,
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black.withAlpha(20),
                              blurRadius: 10.0),
                        ]),
                    height: 140,
                    child: ExpansionTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      childrenPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      expandedCrossAxisAlignment: CrossAxisAlignment.end,
                      maintainState: true,
                      title: Text("Saved"),
                      // contents
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(CupertinoIcons.add_circled),
                            Center(child: Center(child: Text("ADD",
                              style: TextStyle(
                                  color: StaticColors.primaryRedColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),)))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                heightFactor: 0.7,
                alignment: Alignment.topCenter,
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black.withAlpha(20),
                              blurRadius: 10.0),
                        ]),
                    height: 200,
                    child: ExpansionTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      childrenPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      expandedCrossAxisAlignment: CrossAxisAlignment.end,
                      maintainState: true,
                      title: Text("Loans"),
                      // contents
                      children: [
                        Container(
                          height: 70,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                width: 190,
                                decoration: BoxDecoration(
                                    color: StaticColors.primaryRedColor,
                                    borderRadius: BorderRadius.circular(16)),
                                child: const Center(
                                    child: Text(
                                      'Item 1',
                                      style:
                                      TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    )),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                width: 190,
                                decoration: BoxDecoration(
                                    color: StaticColors.primaryRedColor,
                                    borderRadius: BorderRadius.circular(16)),
                                child: const Center(
                                    child: Text(
                                      'Item 1',
                                      style:
                                      TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    )),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                width: 190,
                                decoration: BoxDecoration(
                                    color: StaticColors.primaryRedColor,
                                    borderRadius: BorderRadius.circular(16)),
                                child: const Center(
                                    child: Text(
                                      'Item 1',
                                      style:
                                      TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    )),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Align(
                heightFactor: 0.7,
                alignment: Alignment.topCenter,
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black.withAlpha(20),
                              blurRadius: 10.0),
                        ]),
                    height: 200,
                    child: ExpansionTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      childrenPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      expandedCrossAxisAlignment: CrossAxisAlignment.end,
                      maintainState: true,
                      title: Text("Deposits"),
                      // contents
                      children: [
                        Container(
                          height: 70,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                width: 190,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 179, 188, 195),
                                    borderRadius: BorderRadius.circular(16)),
                                child: const Center(
                                    child: Text(
                                      'Item 1',
                                      style:
                                      TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    )),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                width: 190,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 179, 188, 195),
                                    borderRadius: BorderRadius.circular(16)),
                                child: const Center(
                                    child: Text(
                                      'Item 1',
                                      style:
                                      TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    )),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                width: 190,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 179, 188, 195),
                                    borderRadius: BorderRadius.circular(16)),
                                child: const Center(
                                    child: Text(
                                      'Item 1',
                                      style:
                                      TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    )),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                heightFactor: 0.7,
                alignment: Alignment.topCenter,
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black.withAlpha(20),
                              blurRadius: 10.0),
                        ]),
                    height: 200,
                    child: ExpansionTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      childrenPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      expandedCrossAxisAlignment: CrossAxisAlignment.end,
                      maintainState: true,
                      title: Text("Exchange Rates"),
                      // contents
                      children: [
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}