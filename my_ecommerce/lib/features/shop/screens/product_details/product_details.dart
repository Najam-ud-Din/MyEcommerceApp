import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/common/widgets/Troundedcontainer.dart';
import 'package:my_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce/common/widgets/icons/t_circular_icons.dart';
import 'package:my_ecommerce/common/widgets/images/Troundimage.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tcurved_edgewidget.dart';
import 'package:my_ecommerce/features/shop/screens/product_details/widgets/t_product_image_slider.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //-- 1- Product Image Slider
            TProductImageSlider(),

            // -2- Products details
            Padding(
              padding: EdgeInsets.only(
                  right: Sizes.defaultSpacing,
                  left: Sizes.defaultSpacing,
                  bottom: Sizes.defaultSpacing),
              child: Column(
                children: [
                  /// - rating and share
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Rating and share button
                      Row(
                        children: [
                          Icon(
                            Iconsax.star5,
                            color: Colors.amber,
                            size: 24,
                          ),
                          SizedBox(
                            width: Sizes.spacebtwItems / 2,
                          ),
                          Text.rich(TextSpan(children: [
                            TextSpan(
                              text: '5.0',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            TextSpan(text: '(199)'),
                          ]))
                        ],
                      ),

                      //share button
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          size: Sizes.mdIcon,
                        ),
                      ),
                    ],
                  )

                  /// -price, Title, Stack And brand
                  /// --Attributes
                  /// --Checkout button
                  /// -Description button
                  /// -reviews
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
