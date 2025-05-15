import 'package:flutter/material.dart';
import 'package:my_ecommerce/common/widgets/products/product_cards/prodcut_card_vertical.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';

class Gridlayout extends StatelessWidget {
  const Gridlayout({
    super.key,
    required this.itemcount,
    this.mainAxisExtent = 288,
    required this.itemBuilder,
  });

  final int itemcount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      itemCount: itemcount,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: Sizes.gridViewpacing,
          crossAxisSpacing: Sizes.gridViewpacing,
          mainAxisExtent: mainAxisExtent),
      itemBuilder: itemBuilder,
    );
  }
}
