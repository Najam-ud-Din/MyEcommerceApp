import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/constants/texts.dart';

class Formdivider extends StatelessWidget {
  const Formdivider({
    super.key,
    required this.dark,
    required this.dividertxt,
  });

  final bool dark;
  final String dividertxt;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? Tcolors.darkgrey : Tcolors.grey,
            thickness: 0.5,
            indent: 60.0,
            endIndent: 5,
          ),
        ),
        Text(
          dividertxt.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? Tcolors.darkgrey : Tcolors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60.0,
          ),
        ),
      ],
    );
  }
}
