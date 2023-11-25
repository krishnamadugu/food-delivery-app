import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/app_strings.dart';
import 'package:food_delivery_app/constants/theme/app_colors.dart';

class CustomPopularRowWidget extends StatelessWidget {
  const CustomPopularRowWidget({
    super.key,
    required this.themeVal,
    required this.txtVal,
  });

  final ThemeData themeVal;
  final String txtVal;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txtVal,
          style: themeVal.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
        Text(
          AppStrings.btnTxtViewMore,
          style: themeVal.textTheme.bodyMedium?.copyWith(
            color: AppColors.orange,
          ),
        ),
      ],
    );
  }
}
