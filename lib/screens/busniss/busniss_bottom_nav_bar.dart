import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landing/colors.dart';
import 'package:landing/screens/service_provider/profile.dart';
import 'busniss_dashboard_screen.dart';
import 'busniss_profile.dart';
import 'notification.dart';

class BusnissBottomNavBar extends StatefulWidget {
  const BusnissBottomNavBar({Key? key}) : super(key: key);

  @override
  State<BusnissBottomNavBar> createState() => _BusnissBottomNavBarState();
}

class _BusnissBottomNavBarState extends State<BusnissBottomNavBar> {
  final List<Widget> _pages = [
    BusnissDashboard(),
    const NotificationScreen(),
    const BusnissProfile(),
  ];


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
                Icons.notifications,
              ),
              label: "Notification"),
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
