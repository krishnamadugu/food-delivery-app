import 'package:food_delivery_app/utils/permissionHandler/location_permission.dart';
import 'package:geolocator/geolocator.dart';

class LocationServices {
  Future<Position?> getCurrentLocation() async {
    var position = await GetLocationPermission().determinePosition();
    if (position != null) {
      return position;
    }
    return null;
  }
}
