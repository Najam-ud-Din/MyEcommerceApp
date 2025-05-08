import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/common/products.dart/cart_menu_icon.dart';
import 'package:my_ecommerce/common/styles/widgets/custom_shapes/curved_edges.dart';
import 'package:my_ecommerce/common/widgets/appbar.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/t_home_bar.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tcircularcontainer.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tcurved_edgewidget.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tprimary_header_container.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/constants/texts.dart';
import 'package:my_ecommerce/utils/device/device_utility.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header container
            TprimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  THomeBar(),
                  SizedBox(
                    height: Sizes.spacebtwsections,
                  ),

                  //search bar
                  TSearchContainer()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon,
    required this.showbackground,
    required this.showborder,
  });

  final String text;
  final IconData? icon;
  final bool showbackground, showborder;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpacing),
      child: Container(
        width: TDeviceUtility.getscreenWidth(context),
        padding: EdgeInsets.all(Sizes.md),
        decoration: BoxDecoration(
          color: showbackground
              ? dark
                  ? Tcolors.dark
                  : Tcolors.light
              : Tcolors.transparent,
          borderRadius: BorderRadius.circular(Sizes.cardRadiusLg),
          border: showborder ? Border.all(color: Tcolors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Tcolors.darkerGrey,
            ),
            SizedBox(
              width: Sizes.spacebtwItems,
            ),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
