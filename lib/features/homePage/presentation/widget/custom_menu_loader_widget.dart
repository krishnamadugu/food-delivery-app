import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

import '../../../../constants/theme/border_radii.dart';

class CustomPopularMenuItemLoaderWidget extends StatelessWidget {
  const CustomPopularMenuItemLoaderWidget({
    super.key,
    required this.itemCount,
    required this.deviceWidth,
  });

  final int itemCount;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 100,
          width: deviceWidth,
          margin: const EdgeInsets.only(
            bottom: 20.0,
          ),
          child: Card(
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(BorderRadii.size_12),
            ),
            child: SkeletonListTile(
              hasLeading: true,
              hasSubtitle: true,
              contentSpacing: 20.0,
              padding: const EdgeInsets.all(20.0),
            ),
          ),
        );
      },
    );
  }
}
