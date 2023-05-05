import 'package:flutter/material.dart';
import 'package:landing/colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/clock.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  const Text(
                    "Asad Latif",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Open to work",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: greyColor),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 10,
                        child: Icon(
                          Icons.done,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  const Text(
                    "UI/UX Designer, Web Design, Mobile App Design",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: greyColor),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.1, vertical: height * 0.025),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: lightGreyColor),
                        child: Row(
                          children: const [
                            Text(
                              "25",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: blackColor),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Applied",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: greyColor),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.1, vertical: height * 0.025),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: lightGreyColor),
                        child: Row(
                          children: const [
                            Text(
                              "10",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: blackColor),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Reviewed",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: greyColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Divider(),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.02, vertical: height * 0.02),
                    margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: blueColor,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "About Me",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Icon(Icons.edit),
                          ],
                        ),SizedBox(height: height * 0.02,),
                        const Text(
                          "Hone your skills and expand your knowledge with online courses. You’ll be able to offer more services and gain more exposure with every course completed.Hone your skills and expand your knowledge with online courses. You’ll be able to offer more services and gain more exposure with every course completed."
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.02, vertical: height * 0.02),
                    margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: blueColor,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "About Me",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Icon(Icons.edit),
                          ],
                        ),
                        SizedBox(height: height * 0.02,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: blueColor,),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child:
                              const Text(
                                "Design and Creative",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: blueColor,),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child:
                              const Text(
                                "Wire-framing UX",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                top: height * 0.15,
                child: Container(
                  width: width * 0.3,
                  height: width * 0.3,
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: whiteColor),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/dp.jpg"), fit: BoxFit.cover),
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
