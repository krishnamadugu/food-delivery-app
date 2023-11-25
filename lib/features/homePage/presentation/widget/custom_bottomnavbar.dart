import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/theme/theme_constants.dart';
import 'package:food_delivery_app/features/homePage/presentation/bloc/cubit/home_cubit.dart';
import 'package:food_delivery_app/features/homePage/presentation/bloc/cubit/home_cubit_state.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../../../constants/app_strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit(),
      child: Container(
        margin: const EdgeInsets.only(
          left: 18.0,
          right: 18.0,
          top: 12.0,
          bottom: 18.0,
        ),
        child: BlocBuilder<HomeCubit, HomeCubitState>(
          builder: (context, state) {
            return GNav(
                haptic: true, // haptic feedback
                tabBorderRadius: 15,
                tabActiveBorder: Border.all(
                  style: BorderStyle.none,
                ),
                tabBorder: Border.all(
                  style: BorderStyle.none,
                ),
                curve: Curves.easeInOut,
                duration: const Duration(milliseconds: 300),
                gap: 8,
                color: Colors.grey[800],
                activeColor: Colors.black,
                iconSize: 24,
                tabBackgroundColor: Colors.green.withOpacity(0.1),
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 18,
                  top: 12,
                  bottom: 12,
                ), // navigation bar padding
                tabs: [
                  GButton(
                    onPressed: () {
                      BlocProvider.of<HomeCubit>(context)
                          .activeBottomNavIcon(0);
                    },
                    icon: (state.btnIndex == 0)
                        ? Icons.home
                        : Icons.home_outlined,
                    iconColor: ThemeConstants.appTheme,
                    iconActiveColor: ThemeConstants.appTheme,
                    text: AppStrings.txtBottomAppBarHomeLabel,
                  ),
                  GButton(
                    onPressed: () {
                      BlocProvider.of<HomeCubit>(context)
                          .activeBottomNavIcon(1);
                    },
                    icon: (state.btnIndex == 1)
                        ? Icons.person
                        : Icons.person_outlined,
                    iconColor: ThemeConstants.appTheme,
                    iconActiveColor: ThemeConstants.appTheme,
                    text: AppStrings.txtBottomAppBarProfileLabel,
                  ),
                  GButton(
                    onPressed: () {
                      BlocProvider.of<HomeCubit>(context)
                          .activeBottomNavIcon(2);
                    },
                    icon: (state.btnIndex == 2)
                        ? Icons.shopping_cart
                        : Icons.shopping_cart_outlined,
                    iconColor: ThemeConstants.appTheme,
                    iconActiveColor: ThemeConstants.appTheme,
                    text: AppStrings.txtBottomAppBarCartLabel,
                  ),
                  GButton(
                    onPressed: () {
                      BlocProvider.of<HomeCubit>(context)
                          .activeBottomNavIcon(3);
                    },
                    icon: (state.btnIndex == 3)
                        ? Icons.message
                        : Icons.message_outlined,
                    iconColor: ThemeConstants.appTheme,
                    iconActiveColor: ThemeConstants.appTheme,
                    text: AppStrings.txtBottomAppBarChatLabel,
                  ),
                ]);
          },
        ),
      ),
    );
  }
}
