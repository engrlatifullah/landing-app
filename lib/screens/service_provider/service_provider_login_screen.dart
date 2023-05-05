import 'package:flutter/material.dart';
import 'package:landing/widget/reusable_button.dart';
import 'package:landing/widget/reusable_textFormField.dart';

import '../../colors.dart';
import 'bottom_nav_bar.dart';

class ServiceProviderLogin extends StatelessWidget {
  const ServiceProviderLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Service Provider",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text(
                  "Sign In",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
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
                ReusableButton(
                  title: "Login",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const BottomNavBar();
                      }),
                    );
                  },
                  filled: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ButtonStyle(
                          textStyle: MaterialStateProperty.all(
                            const TextStyle(
                              color: blueColor,
                            ),
                          ),
                        ),
                        child: const Text(
                          "Sign Up",
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
