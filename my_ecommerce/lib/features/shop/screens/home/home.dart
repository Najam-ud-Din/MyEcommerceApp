import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/common/styles/widgets/custom_shapes/curved_edges.dart';
import 'package:my_ecommerce/common/widgets/appbar.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tcircularcontainer.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tcurved_edgewidget.dart';
import 'package:my_ecommerce/features/shop/screens/home/widgets/tprimary_header_container.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/texts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header container
            TprimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.onpressed,
    this.iconColor = Tcolors.white,
  });

  final VoidCallback onpressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {
              onpressed;
            },
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: Tcolors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: Tcolors.white, fontSizeFactor: 0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
