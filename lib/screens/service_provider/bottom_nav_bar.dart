import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landing/colors.dart';
import 'package:landing/screens/service_provider/profile.dart';

import 'dashboard_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> _pages = [
    Dashboard(),
    Container(),
    const Profile(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        height: 70,
        activeColor: blueColor,
        border: const Border(
          top: BorderSide(color: blueColor),
        ),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              label: "Dashboard"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_rounded,
              ),
              label: "Calendar"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile"),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (context) {
            return CupertinoPageScaffold(child: _pages[index]);
          },
        );
      },
    );
  }
}
