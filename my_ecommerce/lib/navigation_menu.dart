import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/features/shop/screens/home/home.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/constants/texts.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';
import 'package:my_ecommerce/utils/themes/custom_themes/anvigationbartheme.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: darkMode ? Tcolors.black : Tcolors.white,
          borderRadius: BorderRadius.circular(20), // Rounded shape
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Obx(
            () => NavigationBarTheme(
              data: darkMode
                  ? Tnavigationbartheme.darknavigationbartheme
                  : Tnavigationbartheme.lightnavigationbartheme,
              child: NavigationBar(
                  // navigation bar property or design
                  height: Sizes.bottomnavigationbarheight,
                  elevation: 0,
                  selectedIndex: controller.selectedIndex,
                  onDestinationSelected: (index) =>
                      controller.setselectedindex(index),
                      backgroundColor: Colors.transparent,
                  //backgroundColor: darkMode ? Tcolors.black : Tcolors.white,
                  indicatorColor: darkMode
                      ? Tcolors.white.withValues(
                          alpha: 160.0,
                        )
                      : Tcolors.black.withValues(
                          alpha: 160.0,
                        ),
                  destinations: [
                    NavigationDestination(
                      icon: Icon(
                        Iconsax.home,
                        color: controller.selectedIndex == 0
                            ? (darkMode ? Colors.white : Tcolors.black)
                            : (darkMode ? Colors.white70 : Colors.grey),
                      ),
                      label: Ttexts.home,
                    ),
                    NavigationDestination(
                      icon: Icon(
                        Iconsax.shop,
                        color: controller.selectedIndex == 1
                            ? (darkMode ? Colors.white : Colors.black)
                            : (darkMode ? Colors.white70 : Colors.grey),
                      ),
                      label: controller.selectedIndex == 1
                          ? Ttexts.store // Use the text directly here
                          : Ttexts.store,
                    ),
                    NavigationDestination(
                        icon: Icon(
                          Iconsax.heart,
                          color: controller.selectedIndex == 2
                              ? (darkMode ? Colors.white : Colors.black)
                              : (darkMode ? Colors.white70 : Colors.grey),
                        ),
                        label: Ttexts.wishlist // Use the text directly here

                        ),
                    NavigationDestination(
                        icon: Icon(
                          Iconsax.user,
                          color: controller.selectedIndex == 3
                              ? (darkMode ? Colors.white : Colors.black)
                              : (darkMode ? Colors.white70 : Colors.grey),
                        ),
                        label: Ttexts.profile // Use the text directly here
                        ),
                  ]),
            ),
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex]),
    );
  }
}

class NavigationController extends GetxController {
  Rx<int> _selectedindex = 0.obs;

  // setter method
  void setselectedindex(index) {
    _selectedindex.value = index;
  }

  // getter method
  int get selectedIndex => _selectedindex.value;

  // screens of the navigation buttons
  List<Widget> screens = [
    HomeScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.blue,
    ),
  ];
}
