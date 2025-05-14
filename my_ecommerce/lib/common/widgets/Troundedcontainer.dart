import 'package:flutter/material.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';

class Troundedcontainer extends StatelessWidget {
  const Troundedcontainer(
      {super.key,
      this.width,
      this.height,
      this.radius = Sizes.cardRadiusLg,
      this.child,
      this.showborder = false,
      this.bordercolor = Tcolors.borderColor,
      this.backgroundcolor = Tcolors.white,
      this.padding,
      this.margin});
  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showborder;
  final Color bordercolor;
  final Color backgroundcolor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundcolor,
        borderRadius: BorderRadius.circular(radius),
        border: showborder ? Border.all(color: bordercolor) : null,
      ),
      child: child,
    );
  }
}
