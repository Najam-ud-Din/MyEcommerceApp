import 'package:flutter/cupertino.dart';
import 'package:my_ecommerce/common/widgets/Troundedcontainer.dart';
import 'package:my_ecommerce/common/widgets/Troundimage.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/constants/styles.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class TproductCardVertical extends StatelessWidget {
  const TproductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [Tshadowstyles.verticalProductShadow],
        borderRadius: BorderRadius.circular(Sizes.productImageRadius),
        color: THelperFunctions.isDarkMode(context)
            ? Tcolors.darkerGrey
            : Tcolors.white,
      ),
      child: Column(
        children: [
          //Thumbnail, wishlist button, Discount tag
          Troundedcontainer(
            height: 180,
            padding: EdgeInsets.all(Sizes.sm),
            backgroundcolor: dark ? Tcolors.dark : Tcolors.light,
            child: Stack(
              children: [
                //Thumbnail image
                Troundedimage(
                  imageurl: Timages.Productimage1,
                  applyimageradius: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
