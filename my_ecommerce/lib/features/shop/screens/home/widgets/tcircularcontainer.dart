import 'package:flutter/cupertino.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';

class Tcircularcontainer extends StatelessWidget {
  const Tcircularcontainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.backgroundColor = Tcolors.textWhite,
    this.margin,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? margin;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          // ignore: deprecated_member_use
          color: backgroundColor),
      child: child,
    );
  }
}
