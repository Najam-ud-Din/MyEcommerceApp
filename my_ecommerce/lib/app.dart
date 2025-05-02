import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_ecommerce/features/authentication/screens/OnBoarding/onboarding.dart';
import 'package:my_ecommerce/utils/themes/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce App',
      themeMode: ThemeMode.system,
      theme: TApptheme.lightTheme,
      darkTheme: TApptheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
