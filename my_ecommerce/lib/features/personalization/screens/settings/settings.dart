import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce/common/widgets/images/t_circularimage.dart';
import 'package:my_ecommerce/common/widgets/list_tiles/setting_menu_tile.dart';
import 'package:my_ecommerce/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:my_ecommerce/common/widgets/sectionheading.dart';
import 'package:my_ecommerce/features/personalization/screens/profile/profilescreen.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tprimary_header_container.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //--Header
            TprimaryHeaderContainer(
                child: Column(
              children: [
                //-Appbar
                TAppBar(
                  title: Text('Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: Tcolors.white)),
                ),

                //--User Profile card
                TUserProfileTile(
                  onpressed: () => Get.to(() => Profilescreen()),
                ),
                SizedBox(
                  height: Sizes.spacebtwsections,
                ),
              ],
            )),

            //--Body
            Padding(
              padding: EdgeInsets.all(Sizes.defaultSpacing),
              child: Column(
                children: [
                  TSectionHeading(title: 'Account Settings'),
                  SizedBox(
                    height: Sizes.spacebtwItems,
                  ),
                  TSettingmenuTile(
                    title: "My Addresses",
                    subtitle: "Set shopping delivery address",
                    icon: Iconsax.safe_home,
                  ),
                  TSettingmenuTile(
                    title: "My Cart",
                    subtitle: "Add, remove products and move to checkout",
                    icon: Iconsax.shopping_cart,
                  ),
                  TSettingmenuTile(
                    title: "My Orders",
                    subtitle: "In progress and Completed Orders",
                    icon: Iconsax.bag_tick,
                  ),
                  TSettingmenuTile(
                    title: "Bank account",
                    subtitle: "Withdraw balance to registered bank account",
                    icon: Iconsax.bank,
                  ),
                  TSettingmenuTile(
                    title: "My coupons",
                    subtitle: "List of all the discounted coupons",
                    icon: Iconsax.discount_shape,
                  ),
                  TSettingmenuTile(
                    title: "Notifications",
                    subtitle: "Set any kind of notification message",
                    icon: Iconsax.notification,
                  ),
                  TSettingmenuTile(
                    title: "Account Privacy",
                    subtitle: "Manage data usage and connected accounts",
                    icon: Iconsax.security_card,
                  ),

                  /// --App Settings
                  SizedBox(
                    height: Sizes.spacebtwsections,
                  ),
                  TSectionHeading(
                    title: "App Settings",
                    showActionbutton: false,
                  ),
                  SizedBox(
                    height: Sizes.spacebtwItems,
                  ),
                  TSettingmenuTile(
                    title: "Load data",
                    subtitle: "Upload data to your cloud firebase",
                    icon: Iconsax.document_upload,
                  ),
                  TSettingmenuTile(
                    title: "Geo location",
                    subtitle: "Set recommendation based on location",
                    icon: Iconsax.location,
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingmenuTile(
                    title: "HD image Quality",
                    subtitle: "Set image quality to be seen",
                    icon: Iconsax.image,
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
