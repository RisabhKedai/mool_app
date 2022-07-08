

import 'package:flutter/material.dart';
import 'package:mool_app/Login/presentation/globals/textfieldcontrollers.dart';

import 'package:mool_app/PunchInScreen/presentation/widgets/locationDisp.dart';

class Details extends StatelessWidget {
  var location_data;
  Details(this.location_data);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width / 1.5,
      child: Column(
        children: [
          Text(
            "PAN number / Email:- ${TextFieldControllers.panController.text}",
            style: const TextStyle(
              color: Color(0xff405cd2),
            ),
          ),
          const Text(
            "Location data (Lat Long):-",
            style: TextStyle(
              color: Color(0xff405cd2),
            ),
          ),
          Text(location_data),
        ],
      ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xff40d2ac),
        border: Border.all(
          color: const Color(0xff405cd2),
          width: 1.3,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            24,
          ),
        ),
      ),
    );
  }
}
