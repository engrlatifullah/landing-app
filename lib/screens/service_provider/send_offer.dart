import 'package:flutter/material.dart';
import 'package:landing/screens/service_provider/drawer.dart';
import 'package:landing/screens/widget/custom_appbar.dart';
import 'package:landing/widget/reusable_button.dart';
import 'package:landing/widget/reusable_textFormField.dart';

class SendOfferScreen extends StatelessWidget {
  const SendOfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        drawer: const CustomDrawer(),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text(
                      "Add details",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 10,),
                    const ReusableTextFormField(
                      maxLine: 2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Set budget",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReusableTextFormField(
                      prefixIcon: Icon(Icons.attach_money_rounded),
                      suffixIcons: Icon(Icons.keyboard_arrow_down_outlined),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Day and Time",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReusableTextFormField(
                      prefixIcon: Icon(Icons.calendar_today),
                      suffixIcons: Icon(Icons.keyboard_arrow_down_outlined),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Location",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReusableTextFormField(
                      prefixIcon: Icon(IconData(0xe3ab, fontFamily: 'MaterialIcons')),
                      suffixIcons: Icon(Icons.keyboard_arrow_down_outlined),
                    ),
                    const Spacer(),
                    ReusableButton(title: "Offer Sent",onTap: (){},filled: true,)
                  ],

                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
