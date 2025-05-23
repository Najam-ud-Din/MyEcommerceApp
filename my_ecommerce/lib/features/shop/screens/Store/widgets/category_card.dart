import 'package:flutter/material.dart';
import 'package:my_ecommerce/common/widgets/brands/brand_show_case.dart';
import 'package:my_ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:my_ecommerce/common/widgets/products/product_cards/prodcut_card_vertical.dart';
import 'package:my_ecommerce/common/widgets/sectionheading.dart';
import 'package:my_ecommerce/utils/constants/image_strings.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';

class TCategorytab extends StatelessWidget {
  const TCategorytab({super.key, required this.isdark});

  final bool isdark;

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(Sizes.defaultSpacing),
            child: Column(
              children: [
                /// --Brands
                TBrandshowcase(
                  isdark: isdark,
                  images: [
                    Timages.Productimage1,
                    Timages.Productimage2,
                    Timages.Productimage3,
                  ],
                ),

                /// --Products
                TSectionHeading(
                  title: "You might like",
                  showActionbutton: true,
                  onPressed: () {},
                ),
                SizedBox(
                  height: Sizes.spacebtwItems,
                ),

                Gridlayout(
                    itemcount: 4,
                    itemBuilder: (_, index) => TproductCardVertical()),
                SizedBox(
                  height: Sizes.spacebtwsections,
                ),
              ],
            ),
          ),
        ]);
  }
}
