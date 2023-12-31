import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/route/route_handler.dart';
import 'package:food_delivery_app/features/splashPage/presentation/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteHandler.onGenerateRoute,
      home: SplashScreen(),
    );
  }
}
