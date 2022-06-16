import 'package:flutter/cupertino.dart';

class TextFieldControllers {
  /*------  LOGIN  ------*/
  // for pan number text field
  static TextEditingController panController = TextEditingController();
  // for password text field
  static TextEditingController passController = TextEditingController();

  // validator for pan number
  static String? panValidator() {
    if (panController.value.text.isEmpty) {
      return "Enter some text";
    } else if (!RegExp(r'^[A-Z]{5}[0-9]{4}[A-Z]{1}$')
        .hasMatch(panController.value.text)) {
      return "Not a valid pan";
    } else {
      return null;
    }
  }

  // validator for password (at least 8 letters)
  static String? passValidator() {
    if (passController.value.text.isEmpty) {
      return "Enter password";
    } else if (passController.value.text.length < 8) {
      return "Enter at least 8 characters";
    } else {
      return null;
    }
  }
}
