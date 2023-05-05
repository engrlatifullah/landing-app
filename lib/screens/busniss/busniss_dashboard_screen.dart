import 'package:flutter/material.dart';
import 'package:landing/screens/busniss/request_job.dart';
import 'package:landing/screens/landing_screen.dart';
import 'package:landing/widget/reusable_button.dart';

import '../../colors.dart';
import '../../model/dashboard_model.dart';
import '../service_provider/drawer.dart';
import '../widget/custom_appbar.dart';
import 'busniss_drawer.dart';

class BusnissDashboard extends StatelessWidget {
  // const Dashboard({Key? key}) : super(key: key);
  final List<DashboardModel> content = [
    DashboardModel(
      title: "REQUEST JOB",
      count: 0,
      status: "VIEW",
    ),
    DashboardModel(
      title: "ACTIVE JOB",
      count: 0,
      status: "PICK UP",
    ),
    DashboardModel(
      title: "COMPLETE JOB",
      count: 0,
      status: "VIEW",
    ),
    DashboardModel(
      title: "POST JOB",
      count: 0,
      status: "VIEW",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const BusnissDrawer(),
        appBar: CustomAppBar(title: "Dashboard"),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              const SizedBox(height: 20,),
              const Text(
                "YOUR DAILY RUNDOWN",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: content.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.43,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  mainAxisExtent: MediaQuery.of(context).size.height * 0.18,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      if(index == 0){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                          return const RequestJob();
                        }),);
                      }

                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: lightGreyColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            content[index].title,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: blueColor,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            content[index].count.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: blueColor,
                            ),
                          ),
                          Text(
                            content[index].status,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: blueColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "NO JOB'S DUE TODAY",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: greyColor),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ReusableButton(
                title: "PICK UP JOBS",
                filled: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: blueColor.withOpacity(0.3)),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Turn on Auto assign and we will keep your queue optimized, efficient and full of the closest of job!",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Divider(
                      color: blueColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Turn On",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }




}
