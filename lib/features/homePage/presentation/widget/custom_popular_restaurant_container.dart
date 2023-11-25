import 'package:flutter/material.dart';

import 'package:food_delivery_app/constants/theme/app_colors.dart';

import '../../../../constants/theme/border_radii.dart';

class CustomPopularRestaurantContainerWidget extends StatelessWidget {
  const CustomPopularRestaurantContainerWidget({
    super.key,
    required this.deviceHeight,
    required this.itemCount,
    required this.deviceWidth,
    required this.themeVal,
  });

  final double deviceHeight;
  final double deviceWidth;
  final int itemCount;
  final ThemeData themeVal;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: deviceHeight * 0.23,
          width: deviceWidth * 0.4,
          margin: const EdgeInsets.only(
            right: 40,
            top: 36,
            bottom: 36,
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: AppColors.black.withOpacity(0.1),
                  offset: const Offset(8, 8),
                  spreadRadius: 0.5,
                  blurRadius: 30),
            ],
            borderRadius: BorderRadius.circular(BorderRadii.size_14),
            color: Colors.white,
          ),
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  height: constraints.minHeight * 0.5,
                  width: constraints.minWidth * 0.7,
                  child: const Placeholder(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "index $index",
                  style: themeVal.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "index $index",
                  style: themeVal.textTheme.bodyMedium,
                ),
              ],
            );
          }),
        );
      },
    );
  }
}
