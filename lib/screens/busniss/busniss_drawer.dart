import 'package:flutter/material.dart';
import 'package:landing/screens/busniss/busniss_dashboard_screen.dart';
import 'package:landing/screens/busniss/busniss_profile.dart';
import 'package:landing/screens/service_provider/dashboard_screen.dart';
import 'package:landing/screens/service_provider/my_jobs.dart';
import 'package:landing/screens/service_provider/privacy_screen.dart';
import 'package:landing/screens/service_provider/profile.dart';
import 'package:landing/screens/service_provider/term_and_condition.dart';

import '../../colors.dart';
import '../../model/drawer_model.dart';
import '../widget/reusable_listtile.dart';

class BusnissDrawer extends StatefulWidget {
  const BusnissDrawer({Key? key}) : super(key: key);

  @override
  State<BusnissDrawer> createState() => _BusnissDrawerState();
}

class _BusnissDrawerState extends State<BusnissDrawer> {
  final List<DrawerModel> drawerItem = [
    const DrawerModel(icon: Icons.dashboard, title: 'Dashboard'),
    const DrawerModel(icon: Icons.person, title: 'Profile'),
  ];
  int ? _current;
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children:  [
            ListView.builder(
              itemCount: drawerItem.length,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
              return ReusableListTile(
                onTap: (){
                  setState(() {
                    _current = index;
                  });

                  if (index == 0 ){
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return  BusnissDashboard();
                    },),);
                  }
                  else if (index == 1 ){
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return const BusnissProfile();
                    },),);
                  }
                  else if (index == 2 ){
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return const Profile();
                    },),);
                  }
                },
                leading:  Icon(drawerItem[index].icon,),
                title: drawerItem[index].title,
                selected: index == _current ? true : false,
              );
            },),
            const Divider(),
            const Text("Know more"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return const PrivacyScreen();
                        }),);
                      },
                      child: const Text("Privacy Policy",style: TextStyle(color: blackColor,fontSize: 15,fontWeight: FontWeight.w500),)),
                  const SizedBox(height: 10,),
                  InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return const TermAndCondition();
                        }),);
                      },
                      child: const Text("Terms and Condition",style: TextStyle(color: blackColor,fontSize: 15,fontWeight: FontWeight.w500),)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


