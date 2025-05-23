import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ecommerce/common/products.dart/cart_menu_icon.dart';
import 'package:my_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/texts.dart';

class THomeBar extends StatelessWidget {
  const THomeBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(Ttexts.homeappbartitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: Tcolors.grey)),
          Text(Ttexts.homeappbarsubtitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: Tcolors.white)),
        ],
      ),
      actions: [
        TCartCounterIcon(
          onpressed: () {},
        )
      ],
    );
  }
}
