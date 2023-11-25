import 'package:flutter/material.dart';

import 'package:skeletons/skeletons.dart';
import '../../../../constants/theme/border_radii.dart';

class CustomPopularRestaurantLoaderWidget extends StatelessWidget {
  const CustomPopularRestaurantLoaderWidget({
    super.key,
    required this.itemCount,
    required this.deviceHeight,
    required this.deviceWidth,
  });

  final int itemCount;
  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return SkeletonAvatar(
          style: SkeletonAvatarStyle(
            height: deviceHeight * 0.23,
            width: deviceWidth * 0.4,
            padding: const EdgeInsets.only(
              right: 40,
              top: 36,
              bottom: 36,
            ),
            borderRadius: BorderRadius.circular(BorderRadii.size_14),
          ),
        );
      },
    );
  }
}
