import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/device/device_utility.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showbackground = true,
    this.showborder = true,
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
