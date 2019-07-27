import 'package:geolocator/geolocator.dart';

class Location {
  double lng;
  double lat;

  Future<void> getLocation () async {
    Position position;
    try {
      position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      lng = position.longitude;
      lat = position.latitude;
    } catch (e) {
      print(e);
    }
  }
}