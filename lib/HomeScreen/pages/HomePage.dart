import 'package:flutter/material.dart';
import 'package:mool_app/CreateAccount/presentation/pages/signup.dart';
import 'package:mool_app/HomeScreen/pages/widgets/custom_button.dart';
import 'package:mool_app/Login/presentation/globals/textfieldcontrollers.dart';
import 'package:mool_app/Login/presentation/widgets/textfield.dart';
import 'package:mool_app/Login/presentation/widgets/button.dart';
import 'package:mool_app/PunchInScreen/presentation/pages/punchIn.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 120.0,
        ),
        child: Container(
          child: Column(
            children: [
              Text("Hello 👋"),
              Container(
                // constraints: BoxConstraints.expand(),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/coding.svg"),
                      fit: BoxFit.cover),
                ),
              ),
              const Text('This app is under construction ⚒️'),
              const Text(
                  "While we finish the whole app... why\n don't you get to know about us a bit?"),
              CustomButton(text: "Take me to the website ↗", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
