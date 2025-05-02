import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce/features/authentication/controller/onboardingcontroller.dart';
import 'package:my_ecommerce/features/authentication/screens/OnBoarding/Widgets/on_boarding_dot_navigation.dart';
import 'package:my_ecommerce/features/authentication/screens/OnBoarding/Widgets/on_boarding_next_button.dart';
import 'package:my_ecommerce/features/authentication/screens/OnBoarding/Widgets/on_boarding_page.dart';
import 'package:my_ecommerce/features/authentication/screens/OnBoarding/Widgets/onboarding_skip.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/texts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //horizontal scrollable pages
          PageView(
            controller: controller.pagecontroller,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(
                image: Timages.onboardingImage1,
                title: Ttexts.onBoardingTitle1,
                subtitle: Ttexts.onBoardingSubtitle1,
              ),
              onBoardingPage(
                image: Timages.onboardigImage2,
                title: Ttexts.onBoardingTitle2,
                subtitle: Ttexts.onBoardingSubtitle2,
              ),
              onBoardingPage(
                image: Timages.onboardigImage3,
                title: Ttexts.onBoardingTitle3,
                subtitle: Ttexts.onBoardingSubtitle3,
              )
            ],
          ),
          //skip Button
          onboardingSkip(),

          ///Dot Navigation Smooth Indicator
          OnBoardingDotNavigation(),

          ///Creating the circular button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}
