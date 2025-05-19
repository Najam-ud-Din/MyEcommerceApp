import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ecommerce/utils/constants/enums.dart';

class Tbrandtitletext extends StatelessWidget {
  const Tbrandtitletext(
      {super.key,
      this.color,
      required this.title,
      this.maxlines = 1,
      this.textAlign = TextAlign.center,
      this.brandtextSize = Textsizes.small});

  final Color? color;
  final String title;
  final int maxlines;
  final TextAlign? textAlign;
  final Textsizes brandtextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      //check which brandsize is required an set that style
      style: brandtextSize == Textsizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandtextSize == Textsizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandtextSize == Textsizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
