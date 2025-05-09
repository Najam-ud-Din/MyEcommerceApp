import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    required this.title,
    this.buttontitle = "view all",
    this.showActionbutton = false,
    this.textColor,
    this.onPressed,
  });

  final String title, buttontitle;
  final bool showActionbutton;
  final Color? textColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Popular Categories",
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionbutton)
          TextButton(onPressed: onPressed, child: Text(buttontitle))
      ],
    );
  }
}
