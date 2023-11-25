import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/app_strings.dart';
import 'package:food_delivery_app/constants/theme/border_radii.dart';
import '../../../../constants/app_images.dart';
import '../widget/custom_appbar.dart';
import '../widget/custom_bottomnavbar.dart';
import '../widget/custom_menu_item_widget.dart';
import '../widget/custom_menu_loader_widget.dart';
import '../widget/custom_popular_restaurant_container.dart';
import '../widget/custom_popular_restaurant_loader.dart';
import '../widget/custom_popular_row.dart';
import '../widget/custom_searchbar.dart';
import '../widget/custom_voucher_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var themeVal = Theme.of(context);
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    int itemCount = 10;
    return Scaffold(
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              opacity: 0.4,
              image: AssetImage(AppImages.splashBackgroundImg),
            )),
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: BorderRadii.size_18,
              vertical: BorderRadii.size_8,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomAppBar(themeVal: themeVal),
                  CustomSearchBar(themeVal: themeVal),
                  const SizedBox(
                    height: BorderRadii.size_28,
                  ),
                  CustomVoucherWidget(
                      deviceHeight: deviceHeight,
                      deviceWidth: deviceWidth,
                      themeVal: themeVal),
                  const SizedBox(
                    height: BorderRadii.size_20,
                  ),
                  CustomPopularRowWidget(
                    themeVal: themeVal,
                    txtVal: AppStrings.txtPopularRestaurant,
                  ),
                  SizedBox(
                    height: deviceHeight * 0.34,
                    width: deviceWidth,
                    child: FutureBuilder(
                      future: Future<void>.delayed(
                          const Duration(seconds: 2), () {}),
                      builder: (BuildContext context,
                              AsyncSnapshot<dynamic> snapshot) =>
                          snapshot.connectionState == ConnectionState.done
                              ? CustomPopularRestaurantContainerWidget(
                                  itemCount: itemCount,
                                  deviceHeight: deviceHeight,
                                  deviceWidth: deviceWidth,
                                  themeVal: themeVal)
                              : CustomPopularRestaurantLoaderWidget(
                                  itemCount: itemCount,
                                  deviceHeight: deviceHeight,
                                  deviceWidth: deviceWidth),
                    ),
                  ),
                  CustomPopularRowWidget(
                    themeVal: themeVal,
                    txtVal: AppStrings.txtPopularMenu,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: deviceHeight * 0.34,
                    width: deviceWidth,
                    child: FutureBuilder(
                      future: Future<void>.delayed(
                          const Duration(seconds: 2), () {}),
                      builder: (BuildContext context,
                              AsyncSnapshot<dynamic> snapshot) =>
                          snapshot.connectionState == ConnectionState.done
                              ? CustomPopularMenuItemWidget(
                                  itemCount: itemCount,
                                  deviceWidth: deviceWidth,
                                  themeVal: themeVal,
                                )
                              : CustomPopularMenuItemLoaderWidget(
                                  itemCount: itemCount,
                                  deviceWidth: deviceWidth,
                                ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
