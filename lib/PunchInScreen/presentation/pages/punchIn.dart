import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:mool_app/PunchInScreen/presentation/globals/getlocation.dart';
import 'package:mool_app/PunchInScreen/presentation/globals/checkLocation.dart';
import 'package:mool_app/PunchInScreen/presentation/widgets/dialogbox.dart';
import 'package:mool_app/PunchInScreen/presentation/widgets/button.dart';
import 'package:mool_app/PunchInScreen/presentation/widgets/detailCard.dart';

class PunchIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 120.0,
        ),
        child: StreamBuilder<LocationData>(
          stream: determinePosition(),
          builder:
              (BuildContext context, AsyncSnapshot<LocationData> snapshot) {
            // Details(),

            if (snapshot.hasError) {
              return Container(
                child: Column(
                  children: [
                    Details("Location cannot be captured"),
                    Text("Error in getting user location"),
                  ],
                ),
              );
            } else {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Container(
                    child: Column(
                      children: [
                        Details("Location cannot be captured"),
                        Text("Error in getting user location"),
                      ],
                    ),
                  );
                  break;
                case ConnectionState.waiting:
                  return Container(
                    child: Column(
                      children: [
                        Details("Waiting for location data"),
                        Button(
                          "Punch In",
                          null,
                        ),
                      ],
                    ),
                  );

                case ConnectionState.active:
                  return Column(
                    children: [
                      Details(
                          '${snapshot.data?.latitude} ${snapshot.data?.longitude}'),
                      Button(
                        "Punch In",
                        (checkLatLong(snapshot.data?.latitude,
                                snapshot.data?.longitude))
                            ? () {
                                showCaptureDialog(context);
                                print("Capture attendance");
                              }
                            : null,
                      ),
                    ],
                  );
                default:
                  return Text("Couldn't get location data");
              }
            }
          },
        ),
        // Button(
        //   "Punch In",
        //   () {
        //     showCaptureDialog(context);
        //     print("Capture attendance");
        //   },
        // ),
      ),
    );
  }
}
