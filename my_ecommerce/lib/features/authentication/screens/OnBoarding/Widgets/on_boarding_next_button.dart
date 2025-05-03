import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/features/authentication/controller/onboardingcontroller.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/device/device_utility.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        right: Sizes.defaultSpacing,
        bottom: TDeviceUtility.getBottomNavigationBarHeight(context) + 20,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: dark ? Tcolors.primaryColor : Tcolors.dark),
            onPressed: () {
              OnBoardingController.instance.nextpage();
            },
            child: const Icon(
              Iconsax.arrow_right_3,
              color: Tcolors.white,
            )));
  }
}
