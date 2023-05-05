import 'package:flutter/material.dart';
import 'package:landing/screens/widget/custom_appbar.dart';

import '../../colors.dart';
import 'busniss_drawer.dart';

class RequestJob extends StatelessWidget {
  const RequestJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: CustomAppBar(title: "Request Job"),
      drawer: BusnissDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(height: 20,),
            const Text("Request job",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
            const SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),

                    padding: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: blueColor,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: lightGreyColor,
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Container(
                              height: 80,
                              width: 80,
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/dp.jpg"))
                              ),

                            ),
                            title: const Text("Hania",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                            subtitle: const Text("Jun 8, 2023"),
                            trailing: const CircleAvatar(
                                backgroundColor: blueColor,
                                child: Icon(Icons.messenger)),
                          ),
                          const SizedBox(height: 20,),
                          const Text("In a network, a switch is a hardware device that filters and forwards network packets from one networking device (switch, router, computer, server, etc.) ")
                        ],
                      ),
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
