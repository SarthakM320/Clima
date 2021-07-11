import 'package:location/location.dart';
import 'package:flutter/material.dart';

class LocationFinder {
  late double? latitude;
  late double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      Location location = new Location();

      bool _serviceEnabled;
      PermissionStatus _permissionGranted;
      LocationData _locationData;

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

      _locationData = await location.getLocation();
      this.latitude = _locationData.latitude;
      this.longitude = _locationData.longitude;
    } catch (e) {
      print(e);
    }
  }
}
