import 'package:flutter/material.dart';
import 'package:landing/colors.dart';
import 'package:landing/screens/widget/custom_appbar.dart';

import 'busniss_drawer.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: CustomAppBar(title: "Notification"),
      drawer: BusnissDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: lightGreyColor,
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: whiteColor,
                      ),
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/dp.jpg"),
                      ),
                    ),
                    title: const Text("Hania send you a Job request",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                    subtitle: const Text("3 min ago"),
                  ),
                );
              },),
            )
          ],
        ),
      ),
    ),);
  }
}
