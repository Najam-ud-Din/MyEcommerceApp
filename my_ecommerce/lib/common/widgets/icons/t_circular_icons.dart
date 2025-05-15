import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    required this.dark,
    required this.icon,
    this.width,
    this.height,
    this.size = Sizes.lg,
    this.color,
    this.backgroundcolor,
    this.onpressed,
  });

  final bool dark;
  final IconData icon;
  final double? width, height, size;
  final Color? color;
  final Color? backgroundcolor;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundcolor != null
              ? backgroundcolor!
              : dark
                  ? Tcolors.black.withOpacity(0.9)
                  : Tcolors.white.withOpacity(0.9)),
      child: IconButton(
          onPressed: onpressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
