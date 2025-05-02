import 'package:flutter/material.dart';
import 'package:my_ecommerce/features/authentication/controller/onboardingcontroller.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/device/device_utility.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';
import 'package:my_ecommerce/utils/http/http_client.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.idDarkMode(context);
    return Positioned(
      bottom: TDeviceUtility.getBottomNavigationBarHeight(context) + 30,
      left: Sizes.defaultSpacing,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? Tcolors.white : Tcolors.black, dotHeight: 6),
        controller: controller.pagecontroller,
        onDotClicked: controller.dotNavigatorClick,
        count: 3,
        axisDirection: Axis.horizontal,
      ),
    );
  }
}
