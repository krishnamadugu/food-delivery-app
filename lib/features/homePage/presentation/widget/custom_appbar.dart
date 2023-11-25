import 'package:flutter/material.dart';
import '../../../../constants/app_images.dart';
import '../../../../constants/app_strings.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.themeVal,
  });

  final ThemeData themeVal;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            AppStrings.txtFindYourFavoriteFood,
            style: themeVal.textTheme.headlineMedium?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 2,
          ),
        ),
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.centerRight,
            child: Image.asset(AppImages.notificationIconImg),
          ),
        )
      ],
    );
  }
}
