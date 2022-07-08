import 'package:flutter/material.dart';

import 'package:location/location.dart';

import 'package:mool_app/PunchInScreen/presentation/globals/getlocation.dart';

class LocationWid extends StatefulWidget {
  _LocationWid createState() => _LocationWid();
}

class _LocationWid extends State<LocationWid> {
  List<Widget> children = [];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<LocationData>(
        stream: determinePosition(),
        builder: (BuildContext context, AsyncSnapshot<LocationData> snapshot) {
          if (snapshot.hasError) {
            children = <Widget>[
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text('Error: ${snapshot.error}'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text('Stack trace: ${snapshot.stackTrace}'),
              ),
            ];
          } else {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                children = const <Widget>[
                  Icon(
                    Icons.info,
                    color: Colors.blue,
                    size: 60,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Select a lot'),
                  )
                ];
                break;
              case ConnectionState.waiting:
                children = const <Widget>[
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: CircularProgressIndicator(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Awaiting location access...'),
                  )
                ];
                break;
              case ConnectionState.active:
                children = <Widget>[
                  Text(
                    '${snapshot.data?.latitude} ${snapshot.data?.longitude}',
                  ),
                ];
              // setState(() {});
            }
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: children,
          );
        },
      ),
    );
  }
}
