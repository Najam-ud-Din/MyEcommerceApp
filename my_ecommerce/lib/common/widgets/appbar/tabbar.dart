import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/device/device_utility.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class TtabBar extends StatelessWidget implements PreferredSizeWidget {
  const TtabBar({super.key, required this.tabs});
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? Tcolors.black : Tcolors.white,
      child: Align(
        alignment: Alignment.centerLeft,
        child: TabBar(
          tabs: tabs,
          isScrollable: true,
          labelPadding: const EdgeInsets.symmetric(horizontal: 15.0),
          indicatorColor: Tcolors.primaryColor,
          unselectedLabelColor: Tcolors.darkerGrey,
          labelColor: THelperFunctions.isDarkMode(context)
              ? Tcolors.white
              : Tcolors.primaryColor,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtility.getAppBarHeight());
}
