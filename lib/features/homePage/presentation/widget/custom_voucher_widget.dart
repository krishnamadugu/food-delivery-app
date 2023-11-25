import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/theme/app_colors.dart';
import 'package:food_delivery_app/constants/theme/theme_constants.dart';
import '../../../../constants/app_images.dart';
import '../../../../constants/app_strings.dart';
import '../../../../constants/theme/border_radii.dart';

class CustomVoucherWidget extends StatelessWidget {
  const CustomVoucherWidget({
    super.key,
    required this.deviceHeight,
    required this.deviceWidth,
    required this.themeVal,
  });

  final double deviceHeight;
  final double deviceWidth;
  final ThemeData themeVal;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.2,
      width: deviceWidth,
      decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.contain,
            opacity: 0.2,
            image: AssetImage(
              AppImages.voucherBackgroundImg,
            ),
          ),
          borderRadius: BorderRadius.circular(BorderRadii.size_18),
          gradient: ThemeConstants.greenButtonLinearGradientTheme),
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(),
              ),
              const SizedBox(
                width: BorderRadii.size_24,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.txtSpecialDealForOctober,
                        style: themeVal.textTheme.titleLarge?.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: BorderRadii.size_18,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(BorderRadii.size_12),
                          gradient:
                              ThemeConstants.whiteButtonLinearGradientTheme,
                        ),
                        child: Text(
                          AppStrings.btnTxtBuyNow,
                          style: themeVal.textTheme.bodyLarge?.copyWith(
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Image.asset(
            AppImages.iceCreamConeImg,
            scale: 0.5,
          ),
        ],
      ),
    );
  }
}
