import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/app_images.dart';
import 'package:food_delivery_app/constants/app_strings.dart';
import 'package:food_delivery_app/utils/helpers/splash_screen_helper.dart';
import '../../../../constants/app_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SplashScreenHelper.getLocationAndNavigateTo(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var themeVal = Theme.of(context);
    return Scaffold(
      body: EasySplashScreen(
        backgroundImage: const AssetImage(AppImages.splashBackgroundImg),
        logo: Image.asset(
          AppImages.splashLogoImg,
          height: 500,
          width: 500,
        ),
        title: Text(
          AppStrings.txtAppName,
          style: themeVal.textTheme.titleLarge?.copyWith(
            fontFamily: fontFamily,
          ),
        ),
        showLoader: false,
      ),
    );
  }
}
