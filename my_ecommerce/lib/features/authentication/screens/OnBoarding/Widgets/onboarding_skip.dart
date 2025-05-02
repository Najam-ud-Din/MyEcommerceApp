import 'package:flutter/material.dart';
import 'package:my_ecommerce/features/authentication/controller/onboardingcontroller.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/device/device_utility.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class onboardingSkip extends StatelessWidget {
  const onboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
        top: TDeviceUtility.getAppBarHeight(),
        right: Sizes.defaultSpacing,
        child: TextButton(
            onPressed: () {
              controller.skippage();
            },
            child: Text(
              'Skip',
              style: TextStyle(
                  fontSize: Sizes.mdFont,
                  color: THelperFunctions.idDarkMode(context)
                      ? Tcolors.white
                      : Tcolors.black),
            )));
  }
}
