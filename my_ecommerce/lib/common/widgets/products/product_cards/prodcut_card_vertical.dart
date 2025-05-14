import 'package:flutter/cupertino.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/constants/styles.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class TproductCardVertical extends StatelessWidget {
  const TproductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
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

          Stack(
            children: [],
          )
        ],
      ),
    );
  }
}
