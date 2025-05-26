import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce/common/widgets/icons/t_circular_icons.dart';
import 'package:my_ecommerce/common/widgets/images/Troundimage.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tcurved_edgewidget.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
   
  });



  @override
  Widget build(BuildContext context) {
      final dark = THelperFunctions.isDarkMode(context);
    return TcurvedEdgewidget(
      child: Container(
        color: dark ? Tcolors.darkgrey : Tcolors.light,
        child: Stack(
          children: [
            // Main large image
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(Sizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(Timages.Productimage5),
                  ),
                ),
              ),
            ),

            //-Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: Sizes.defaultSpacing,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemBuilder: (_, index) => Troundedimage(
                        width: 80,
                        backgroundcolor:
                            dark ? Tcolors.darkgrey : Tcolors.white,
                        border: Border.all(color: Tcolors.primaryColor),
                        padding: EdgeInsets.all(Sizes.sm),
                        imageurl: Timages.Productimage3),
                    separatorBuilder: (_, __) => SizedBox(
                          width: Sizes.spacebtwItems,
                        ),
                    itemCount: 10),
              ),
            ),

            //--Appbar Icons
            TAppBar(
              showbackarrow: true,
              actions: [
                TCircularIcon(
                  dark: dark,
                  icon: Iconsax.heart5,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
