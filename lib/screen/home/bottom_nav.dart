import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mabile_bank_group_mmmx/screen/home/home_screen.dart';

import '../../utils/style_static.dart';

class BottomNavigation extends StatefulWidget {
  static const String route = "home";
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedTab = 0;
  final List _pages = [
    const HomeScreen(),
    const Center(
      child: Text("Payments"),
    ),
    const Center(
      child: Text("Cards"),
    ),
    const Center(
      child: Text("Monitoring"),
    ),
    const Center(
      child: Text("All services"),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedTab],
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12), topLeft: Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 2),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
              child: BottomNavigationBar(
                currentIndex: _selectedTab,
                onTap: (index) => _changeTab(index),
                showUnselectedLabels: true,
                selectedFontSize: 12,
                unselectedFontSize: 12,
                selectedItemColor: StaticColors.primaryRedColor,
                unselectedItemColor: Colors.grey,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.currency_exchange), label: "Payments"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.wallet), label: "Cards"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings_backup_restore),
                      label: "Monitoring"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.menu), label: "All services"),
                ],
              ),
            )));
  }
}
