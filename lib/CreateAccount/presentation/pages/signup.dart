import 'package:flutter/material.dart';
import 'package:mool_app/CreateAccount/presentation/globals/textfieldcontrollers.dart';
import 'package:mool_app/CreateAccount/presentation/widgets/textfield.dart';
import 'package:mool_app/CreateAccount/presentation/widgets/button.dart';
import 'package:mool_app/CreateAccount/presentation/widgets/dialogbox.dart';
import 'package:mool_app/Login/presentation/pages/login.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 120.0,
        ),
        child: Container(
          height: 460,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //Login Text
              const Text(
                'Sign Up',
                style: TextStyle(
                  color: Color(0xff405cd2),
                  fontFamily: 'Gilroy',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // PAN number
              TextInputField(
                "Enter your PAN / Email",
                "XXXXX1234X / example@gmail.com",
                TextFieldControllers.peController,
                false,
                TextFieldControllers.peValidator,
              ),
              const SizedBox(
                height: 10,
              ),
              // Password
              TextInputField(
                "Enter password",
                "Must have least 8 characters",
                TextFieldControllers.passController,
                true,
                TextFieldControllers.passValidator,
              ),
              const SizedBox(
                height: 10,
              ),
              TextInputField(
                "Confirm password",
                "Must be same as above",
                TextFieldControllers.confirmPassController,
                true,
                TextFieldControllers.confirmPassValidator,
              ),
              const SizedBox(
                height: 10,
              ),
              // Biometric Capture button
              Button(
                "Capture Bio",
                () {
                  showCaptureDialog(context);
                  print("Capture Finger Print");
                },
              ),
              // Sign Up button
              Button(
                "SignUp",
                () {
                  print("SignUp");
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
