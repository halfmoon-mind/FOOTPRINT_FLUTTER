import 'package:location/location.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:FOOTPRINT_FLUTTER/service/hive/oneday.dart';

class ListenLocations {
  StreamSubscription<LocationData>? _locationSubscription;
  LocationData? _location;
  listenLocations() {
    _locationSubscription =
        onLocationChanged(inBackground: true).handleError((dynamic err) {
      if (err is PlatformException) {
        print(err.code);
      }
      _locationSubscription?.cancel();
      _locationSubscription = null;
    }).listen((LocationData currentLocation) {
      _location = currentLocation;
      oneDayDataService()
          .addOneDayData(currentLocation.latitude, currentLocation.longitude);
    });
  }
}
