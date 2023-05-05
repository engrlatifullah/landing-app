import 'package:flutter/material.dart';
import 'package:landing/screens/service_provider/dashboard_screen.dart';
import 'package:landing/screens/service_provider/my_jobs.dart';
import 'package:landing/screens/service_provider/privacy_screen.dart';
import 'package:landing/screens/service_provider/profile.dart';
import 'package:landing/screens/service_provider/term_and_condition.dart';

import '../../colors.dart';
import '../../model/drawer_model.dart';
import '../widget/reusable_listtile.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final List<DrawerModel> drawerItem = [
    const DrawerModel(icon: Icons.dashboard, title: 'Dashboard'),
    const DrawerModel(icon: Icons.calendar_today, title: 'My Jobs'),
    const DrawerModel(icon: Icons.person, title: 'Profile'),
    const DrawerModel(icon: Icons.help_center_outlined, title: 'FAQ'),
    const DrawerModel(icon: Icons.web, title: 'Partner Website'),
    const DrawerModel(icon: Icons.support, title: 'Provider Support'),
    const DrawerModel(icon: Icons.logout_rounded, title: 'Logout'),
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
                      return Dashboard();
                    },),);
                  }
                  else if (index == 1 ){
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return const MyJobs(title: "My Jobs");
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


