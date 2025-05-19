import 'package:flutter/material.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class TCircularimage extends StatelessWidget {
  const TCircularimage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.padding = Sizes.sm,
    required this.image,
    this.backgroundColor,
    this.overlaycolor,
    required this.isNetworkimage,
    this.fit = BoxFit.cover,
  });

  final double width, height, padding;
  final String image;
  final Color? backgroundColor, overlaycolor;
  final bool isNetworkimage;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor ??
              (THelperFunctions.isDarkMode(context)
                  ? Tcolors.black
                  : Tcolors.white),
        ),
        child: Image(
          fit: fit,
          image: isNetworkimage ? NetworkImage(image) : AssetImage(image),
          color: overlaycolor,
        ));
  }
}
