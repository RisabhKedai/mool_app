import 'package:location/location.dart';
import 'dart:async';

// final
Stream<LocationData> determinePosition() {
  late final StreamController<LocationData> controller;
  controller = StreamController<LocationData>.broadcast(
    onListen: () async {
      Location location = Location();
      late bool _serviceEnabled;
      late PermissionStatus _permissionGranted;
      _serviceEnabled = await location.serviceEnabled();
      if (!_serviceEnabled) {
        _serviceEnabled = await location.requestService();
        if (!_serviceEnabled) {
          return;
        }
      }

      _permissionGranted = await location.hasPermission();
      if (_permissionGranted == PermissionStatus.denied) {
        _permissionGranted = await location.requestPermission();
        if (_permissionGranted != PermissionStatus.granted) {
          return;
        }
      }
      controller.add(await location.getLocation());
    },
  );
  return controller.stream;
}
