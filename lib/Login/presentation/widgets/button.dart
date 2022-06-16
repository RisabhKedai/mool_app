//import 'dart:math';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  var buttext;
  var butaction;
  Button(this.buttext, this.butaction);
  @override
  _ButtonState createState() => _ButtonState(this.buttext, this.butaction);
}

class _ButtonState extends State<Button> {
  var buttext;
  var butaction;
  _ButtonState(this.buttext, this.butaction);
  @override
  Widget build(BuildContext context) {
    var container = Container(
      width: 200.0,
      child: ElevatedButton(
        onPressed: butaction,
        child: Text(
          buttext,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              return Colors.white;
            },
          ),
          shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
              (Set<MaterialState> states) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            );
          }),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              return const Color(0xff40d2ac);
            },
          ),
        ),
      ),
    );
    return container;
  }
}
