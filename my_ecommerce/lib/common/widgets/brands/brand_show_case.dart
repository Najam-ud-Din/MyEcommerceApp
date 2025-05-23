import 'package:flutter/material.dart';
import 'package:my_ecommerce/common/widgets/Troundedcontainer.dart';
import 'package:my_ecommerce/common/widgets/brands/brand_cards.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';

class TBrandshowcase extends StatelessWidget {
  const TBrandshowcase({
    super.key,
    required this.isdark,
    required this.images,
  });

  final bool isdark;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Troundedcontainer(
      padding: EdgeInsets.all(Sizes.md),
      showborder: true,
      bordercolor: Tcolors.darkgrey,
      backgroundcolor: Colors.transparent,
      margin: EdgeInsets.only(bottom: Sizes.spacebtwItems),
      child: Column(
        children: [
          /// Brand with products count
          Tbrandcards(
            isdark: isdark,
            showborder: false,
          ),

          ///  Brand Top 3 Products image
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: images
                .map((image) => brandTopProductImageWidget(image))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(
    String image,
  ) {
    return Expanded(
      child: Troundedcontainer(
        margin: EdgeInsets.only(right: Sizes.sm),
        padding: EdgeInsets.all(Sizes.sm),
        height: 100,
        backgroundcolor: isdark ? Tcolors.darkgrey : Tcolors.light,
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}
