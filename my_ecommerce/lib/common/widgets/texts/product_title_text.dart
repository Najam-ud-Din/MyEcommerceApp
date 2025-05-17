import 'package:flutter/material.dart';

class TproductTitletext extends StatelessWidget {
  const TproductTitletext({
    super.key,
    required this.Title,
    required this.smallSize,
    this.maxlines = 1,
    this.textAlign,
  });

  final String Title;
  final bool smallSize;
  final int maxlines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      Title,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxlines,
      textAlign: textAlign,
    );
  }
}
