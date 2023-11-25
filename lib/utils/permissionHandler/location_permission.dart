import 'package:geolocator/geolocator.dart';

class GetLocationPermission {
  bool? _isServiceEnabled;
  LocationPermission? _permission;

  Future<Position?> determinePosition() async {
    _permission = await checkPermission();
    if (_permission == LocationPermission.always ||
        _permission == LocationPermission.whileInUse) {
      return await Geolocator.getCurrentPosition();
    }
    return null;
  }

  Future<LocationPermission> checkPermission() async {
    _isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (_isServiceEnabled != null && _isServiceEnabled == false) {
      return Future.error('Location Services are disabled');
    }

    _permission = await Geolocator.checkPermission();

    if (_permission == LocationPermission.denied) {
      _permission = await Geolocator.requestPermission();
      if (_permission == LocationPermission.denied) {
        return LocationPermission.denied;
      }
    } else if (_permission == LocationPermission.deniedForever) {
      return LocationPermission.deniedForever;
    } else if (_permission == LocationPermission.whileInUse) {
      return LocationPermission.whileInUse;
    } else if (_permission == LocationPermission.always) {
      return LocationPermission.always;
    }
    return LocationPermission.unableToDetermine;
  }
}
