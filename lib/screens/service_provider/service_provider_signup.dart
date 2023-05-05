import 'package:flutter/material.dart';
import 'package:landing/screens/service_provider/service_provider_login_screen.dart';
import 'package:landing/widget/reusable_button.dart';
import 'package:landing/widget/reusable_textFormField.dart';

import '../../colors.dart';
import '../busniss/busniss_login_screen.dart';

class UserSignup extends StatelessWidget {
  const UserSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: blueColor,
          centerTitle: true,
          title: const Text(
            "User",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text(
                  "Register",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                const ReusableTextFormField(
                  hintText: "Name",
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableTextFormField(
                  hintText: "Email",
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableTextFormField(
                  hintText: "Password",
                  isPass: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableTextFormField(
                  hintText: "Business Detail",
                  maxLine: 3,
                ),
                const SizedBox(
                  height: 20,
                ),
                ReusableButton(
                  title: "Sign Up",
                  onTap: () {},
                  filled: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                            return const ServiceProviderLogin();
                          }));
                        },
                        style: ButtonStyle(
                          textStyle: MaterialStateProperty.all(
                            const TextStyle(
                              color: blueColor,
                            ),
                          ),
                        ),
                        child: const Text(
                          "LogIn",
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
