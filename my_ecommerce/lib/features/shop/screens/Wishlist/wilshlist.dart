import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce/common/widgets/icons/t_circular_icons.dart';
import 'package:my_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:my_ecommerce/common/widgets/products/product_cards/prodcut_card_vertical.dart';
import 'package:my_ecommerce/features/shop/screens/home/home.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            dark: THelperFunctions.isDarkMode(context),
            icon: Iconsax.add,
            onpressed: () => Get.to(HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Sizes.defaultSpacing),
        child: Column(
          children: [
            Gridlayout(
              itemcount: 4,
              itemBuilder: (_, index) => TproductCardVertical(),
            ),
          ],
        ),
      ),
    );
  }
}
