import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/config/route/app_routes.dart';
import '../../../../utils/services/native_api_services.dart';
import 'dart:async';
import '../../constants/app_constants.dart';

class SplashScreenHelper {
  static void getLocationAndNavigateTo(BuildContext splashContext) {
    Timer(const Duration(seconds: 3), () async {
      try {
        userLocation = await LocationServices().getCurrentLocation();
        if (userLocation != null) {
          debugPrint(
              "Latitude : ${userLocation?.latitude} \n Longitude : ${userLocation?.longitude}");
        } else {
          userLocation = await LocationServices().getCurrentLocation();
          debugPrint(
              " calling again Latitude : ${userLocation?.latitude} \n Longitude : ${userLocation?.longitude}");
        }
      } catch (e) {
        debugPrint("exception is $e");
      }
      if (splashContext.mounted) {
        Navigator.pushNamed(splashContext, AppRoutes.homeScreen);
      } else {
        return;
      }
    });
  }
}
