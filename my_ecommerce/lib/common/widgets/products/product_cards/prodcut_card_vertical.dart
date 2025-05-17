import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/common/widgets/Troundedcontainer.dart';
import 'package:my_ecommerce/common/widgets/Troundimage.dart';
import 'package:my_ecommerce/common/widgets/icons/t_circular_icons.dart';
import 'package:my_ecommerce/common/widgets/texts/product_title_text.dart';
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
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(7),
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
              height: 170,
              padding: EdgeInsets.all(Sizes.sm),
              backgroundcolor: dark ? Tcolors.dark : Tcolors.light,
              child: Stack(
                children: [
                  //Thumbnail image
                  Troundedimage(
                    imageurl: Timages.Productimage1,
                    applyimageradius: true,
                  ),

                  ///-Sale tag
                  Positioned(
                    top: 10,
                    left: 3,
                    child: Troundedcontainer(
                      radius: Sizes.sm,
                      backgroundcolor: Tcolors.secondaryColor.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(
                          horizontal: Sizes.sm, vertical: Sizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: Tcolors.black),
                      ),
                    ),
                  ),

                  ///-Favourite icon button
                  Positioned(
                    right: 0,
                    top: 0,
                    child: TCircularIcon(
                      dark: dark,
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: Sizes.spacebtwItems / 2,
            ),

            ///-Details
            Padding(
              padding: EdgeInsets.only(left: Sizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TproductTitletext(
                    Title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(
                    height: Sizes.spacebtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: Sizes.xs,
                      ),
                      Icon(
                        Iconsax.verify5,
                        color: Tcolors.primaryColor,
                        size: Sizes.xsIcon,
                      )
                    ],
                  ),
                ],
              ),
            ),

            ///Add spacer() here to keep the height of each box same
            Spacer(),

            Padding(
              padding: const EdgeInsets.only(left: Sizes.sm),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Tproductpricetext(
                    currencysign: '\$',
                    price: '34.4',
                  ),

                  //Add to cart button
                  Container(
                    decoration: BoxDecoration(
                        color: Tcolors.dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Sizes.cardradiusMd),
                          bottomRight:
                              Radius.circular(Sizes.productImageRadius),
                        )),
                    child: SizedBox(
                      width: Sizes.lgIcon * 1.2,
                      height: Sizes.lgIcon * 1.2,
                      child: Center(
                        child: Icon(
                          Iconsax.add,
                          color: Tcolors.white,
                        ),
                      ),
                    ),
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

class Tproductpricetext extends StatelessWidget {
  const Tproductpricetext({
    super.key,
    this.currencysign = '\$',
    required this.price,
    this.maxlines = 1,
    this.islarge = false,
    this.lineThrough = false,
  });

  final String currencysign, price;
  final int maxlines;
  final bool islarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(currencysign + price,
        overflow: TextOverflow.ellipsis,
        maxLines: maxlines,
        style: islarge
            ? Theme.of(context).textTheme.headlineMedium!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null)
            : Theme.of(context).textTheme.titleLarge!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null));
  }
}
