import 'package:flutter/material.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';

class Troundedimage extends StatelessWidget {
  const Troundedimage({
    super.key,
    this.width,
    this.height,
    required this.imageurl,
    this.applyimageradius = true,
    this.border,
    this.backgroundcolor = Tcolors.white,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkimage = false,
    this.onPressed,
    this.borderradius = Sizes.md,
  });
  final double? width, height;
  final String imageurl;
  final bool applyimageradius;
  final BoxBorder? border;
  final Color backgroundcolor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkimage;
  final VoidCallback? onPressed;
  final double borderradius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(borderradius),
        ),
        child: ClipRRect(
            borderRadius: applyimageradius
                ? BorderRadius.circular(borderradius)
                : BorderRadius.zero,
            child: Image(
              image: isNetworkimage
                  ? NetworkImage(imageurl)
                  : AssetImage(imageurl) as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}
