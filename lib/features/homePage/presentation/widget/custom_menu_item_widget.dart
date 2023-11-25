import 'package:flutter/material.dart';
import '../../../../constants/theme/app_colors.dart';
import '../../../../constants/theme/border_radii.dart';

class CustomPopularMenuItemWidget extends StatelessWidget {
  const CustomPopularMenuItemWidget({
    super.key,
    required this.itemCount,
    required this.deviceWidth,
    required this.themeVal,
  });

  final int itemCount;
  final double deviceWidth;
  final ThemeData themeVal;

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
            child: ListTile(
              contentPadding: const EdgeInsets.all(12.0),
              leading: Container(
                alignment: Alignment.center,
                height: 100,
                width: 50,
                child: const Placeholder(),
              ),
              title: Text(
                "$index",
                style: themeVal.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "$index",
                style: themeVal.textTheme.bodyMedium,
              ),
              trailing: Text(
                "\$$index",
                style: themeVal.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold, color: AppColors.orange),
              ),
            ),
          ),
        );
      },
    );
  }
}
