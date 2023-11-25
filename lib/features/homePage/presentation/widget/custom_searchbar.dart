import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/constants/app_images.dart';
import 'package:food_delivery_app/constants/app_strings.dart';
import 'package:food_delivery_app/constants/theme/app_colors.dart';
import '../../../../constants/theme/border_radii.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.themeVal,
  });

  final ThemeData themeVal;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: AppColors.strokeOrange,
                  size: BorderRadii.size_26,
                ),
              ),
              filled: true,
              fillColor: AppColors.lightStrokeOrange.withOpacity(0.1),
              hintText: AppStrings.txtWhatDoYouWantToOrder,
              hintStyle: themeVal.textTheme.bodyLarge?.copyWith(
                color: AppColors.lightStrokeOrange,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(BorderRadii.size_18),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.only(left: 18),
            padding: const EdgeInsets.symmetric(vertical: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(BorderRadii.size_18),
              color: AppColors.lightStrokeOrange.withOpacity(0.1),
            ),
            child: SvgPicture.asset(AppImages.filterIconSvg),
          ),
        ),
      ],
    );
  }
}
