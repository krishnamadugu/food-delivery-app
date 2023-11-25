import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/route/app_routes.dart';
import 'package:food_delivery_app/features/errorPage/presentation/pages/error_screen.dart';
import '../../features/homePage/presentation/pages/home_page.dart';
import '../../features/splashPage/presentation/pages/splash_screen.dart';

class RouteHandler {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    var routeName = routeSettings.name;
    //var routeArgs = routeSettings.arguments;

    switch (routeName) {
      case AppRoutes.splashScreen:
        return MaterialPageRoute(
            builder: (splashContext) => const SplashScreen());
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
            builder: (splashContext) => const HomeScreen());
      default:
        return MaterialPageRoute(
            builder: (errorContext) =>
                ErrorScreen(routeName: routeName.toString()));
    }
  }
}
