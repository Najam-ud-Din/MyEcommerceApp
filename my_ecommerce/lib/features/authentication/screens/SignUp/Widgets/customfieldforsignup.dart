import 'package:flutter/material.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';
import 'package:my_ecommerce/utils/helpers/helperfunction.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield(
      {super.key,
      required this.labelText,
      required this.prefixIcon,
      this.suffixIcon,
      required this.expand});

  final String labelText;
  final IconData? prefixIcon, suffixIcon;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TextFormField(
      expands: expand,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
          // Border when focused
          borderSide: BorderSide(
              color: dark ? Tcolors.white : Tcolors.black, width: 1.0),
        ),
        enabled: true,
        labelText: labelText,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Icon(suffixIcon),
      ),
    );
  }
}
