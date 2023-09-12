import 'dart:developer';
import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longtitude;

  Future<void> getCurrentLocation() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();

    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
      );

      latitude = position.latitude;
      longtitude = position.longitude;

    } catch (e) {
      log('Something goes wrong: $e');
    }
  }
}
