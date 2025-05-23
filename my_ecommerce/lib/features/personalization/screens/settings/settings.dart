import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce/common/widgets/images/t_circularimage.dart';
import 'package:my_ecommerce/common/widgets/list_tiles/user_profile_tile.dart';
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
                TUserProfileTile(),
                SizedBox(
                  height: Sizes.spacebtwsections,
                ),
              ],
            ))

            //--Body
          ],
        ),
      ),
    );
  }
}

