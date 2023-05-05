import 'package:flutter/material.dart';
import 'package:landing/colors.dart';
import 'package:landing/widget/reusable_textFormField.dart';

import '../send_offer.dart';

class AvailableJobs extends StatelessWidget {
  const AvailableJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const ReusableTextFormField(
            hintText: "Search",
            prefixIcon: Icon(
              Icons.search,
            ),
            suffixIcons: Icon(Icons.filter_list_outlined),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("1232 jobs found"),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                border: Border.all(color: blueColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 60,
                      width: 60,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: blueColor.withOpacity(0.3),
                      ),
                      child: Image.asset("assets/pharmacy.png")),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            const Text(
                              "Senior UI/UX Designer",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                            InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                                    return const SendOfferScreen();
                                  }),);
                                },
                                child: const Icon(Icons.bookmark_border,color: blueColor))
                          ],
                        ),
                        const Text(
                          "Shell",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, color: greyColor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "\$560-\$12000/Month",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: greyColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: lightGreyColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child:
                              const Text(
                                "Full Time",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, color: greyColor),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: lightGreyColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child:
                              const Text(
                                "Two days ago",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, color: greyColor),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },)
        ],
      ),
    );
  }
}
