import 'variables.dart';
import 'dart:math';

double radians(double degree) {
  return degree * pi / 180;
}

bool checkLatLong(double? lat, double? long) {
  // double R = 6373.0;
  // if (lat != null && long != null) {
  //   double lat1 = radians(lat);
  //   double lon1 = radians(long);
  //   double lat2 = radians(latitude);
  //   double lon2 = radians(longitude);

  //   double dlon = lon2 - lon1;
  //   double dlat = lat2 - lat1;
  //   double a = (sin(dlat / 2) * sin(dlat / 2)) +
  //       cos(lat1) * cos(lat2) * (sin(dlon / 2) * sin(dlon / 2));
  //   double c = 2 * atan2(sqrt(a), sqrt(1 - a));
  //   double distance = R * c;

  //   print(distance);
  //   return (distance <= range);
  // }
  return true;
}
