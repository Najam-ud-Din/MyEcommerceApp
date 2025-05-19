import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce/common/widgets/texts/tbrandtitletext.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/enums.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';

class TbrandtitlewithverificationIcon extends StatelessWidget {
  const TbrandtitlewithverificationIcon({
    super.key,
    required this.title,
    this.maxlines = 1,
    this.textcolor,
    this.iconcolor = Tcolors.primaryColor,
    this.textAlign = TextAlign.center,
    this.brandtextSize = Textsizes.small,
  });

  final String title;
  final int maxlines;
  final Color? textcolor, iconcolor;
  final TextAlign? textAlign;
  final Textsizes brandtextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: Tbrandtitletext(
          title: title,
          color: textcolor,
          maxlines: maxlines,
          textAlign: textAlign,
          brandtextSize: brandtextSize,
        )),
        const SizedBox(
          width: Sizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: iconcolor,
          size: Sizes.xsIcon,
        ),
      ],
    );
  }
}
