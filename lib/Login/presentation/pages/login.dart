import 'package:flutter/material.dart';
import 'package:mool_app/CreateAccount/presentation/pages/signup.dart';
import 'package:mool_app/Login/presentation/globals/textfieldcontrollers.dart';
import 'package:mool_app/Login/presentation/widgets/textfield.dart';
import 'package:mool_app/Login/presentation/widgets/button.dart';
import 'package:mool_app/PunchInScreen/presentation/pages/punchIn.dart';

class Login extends StatelessWidget {
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
                'Login',
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
                TextFieldControllers.panController,
                false,
                TextFieldControllers.panValidator,
              ),
              const SizedBox(
                height: 10,
              ),
              // Password
              TextInputField(
                "Enter the password",
                "********",
                TextFieldControllers.passController,
                true,
                TextFieldControllers.passValidator,
              ),
              const SizedBox(
                height: 10,
              ),
              // Login button
              Button(
                "LOGIN",
                () {
                  print("Login");
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => PunchIn()),
                  );
                },
              ),
              const SizedBox(
                height: 8,
              ),
              // Forgot password
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'Cant Login? ',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 16,
                        color: Color.fromRGBO(177, 177, 177, 1),
                        height: 1,
                      ),
                      //textAlign: TextAlign.center,
                    ),
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 16,
                          color: Color(0xff405cd2),
                          height: 1,
                          fontWeight: FontWeight.w600),
                      // textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 8,
              // ),
              // Forgot password
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Dont\'t have an account? ',
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 16,
                        color: Color.fromRGBO(177, 177, 177, 1),
                        height: 1,
                      ),
                      //textAlign: TextAlign.center,
                    ),
                    TextButton(
                      onPressed: () {
                        print('GO to sign up.');
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: const Text(
                        'SignUp',
                        style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontSize: 16,
                          color: Color(0xff405cd2),
                          height: 1,
                          fontWeight: FontWeight.w600,
                        ),
                        // textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
