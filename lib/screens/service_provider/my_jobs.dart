import 'package:flutter/material.dart';
import 'package:landing/colors.dart';
import 'package:landing/screens/service_provider/drawer.dart';
import 'package:landing/screens/widget/custom_appbar.dart';

import 'my_jobs_tab/accept_tab.dart';
import 'my_jobs_tab/available_job.dart';
import 'my_jobs_tab/completed_tab.dart';

class MyJobs extends StatefulWidget {
  final String title;

  const MyJobs({Key? key, required this.title}) : super(key: key);

  @override
  State<MyJobs> createState() => _MyJobsState();
}

class _MyJobsState extends State<MyJobs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: widget.title),
        drawer: const CustomDrawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _currentIndex == 0 ? blueColor : whiteColor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                      child: Text(
                        "ACCEPTED",
                        style: TextStyle(
                          fontSize: 16,
                          color: _currentIndex == 0 ? whiteColor : blueColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _currentIndex == 1 ? blueColor : whiteColor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                      child: Text(
                        "AVAILABLE",
                        style: TextStyle(
                          fontSize: 16,
                          color: _currentIndex == 1 ? whiteColor : blueColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentIndex = 2;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _currentIndex == 2 ? blueColor : whiteColor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                      child: Text(
                        "COMPLETED",
                        style: TextStyle(
                          fontSize: 16,
                          color: _currentIndex == 2 ? whiteColor : blueColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              _currentIndex == 0
                  ? const Accepted()
                  : _currentIndex == 1 ? const AvailableJobs() : const Completed(),
            ],
          ),
        ),
      ),
    );
  }
}
