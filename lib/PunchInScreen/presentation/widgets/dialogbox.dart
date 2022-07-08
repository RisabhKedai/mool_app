import 'package:flutter/material.dart';

void showCaptureDialog(BuildContext context) {
  showDialog<bool>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        // insetPadding: EdgeInsets.all(20),
        content: Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height / 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                "Please record your fingerprint",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 17),
              Icon(
                Icons.fingerprint,
                color: Colors.grey,
                size: 100,
              )
            ],
          ),
        ),
        actions: const <Widget>[
          // FlatButton(
          //   child: const Text('OK'),
          //   onPressed: () {
          //     Navigator.of(context).pop(true);
          //   },
          // ),
        ],
      );
    },
  );
}
