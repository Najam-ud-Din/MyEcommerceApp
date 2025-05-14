import 'package:flutter/cupertino.dart';
import 'package:my_ecommerce/utils/constants/colors.dart';

class Tshadowstyles {
  static final verticalProductShadow = BoxShadow(
      color: Tcolors.darkgrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: Offset(0, 2));

  static final horizontalProductShadow = BoxShadow(
      color: Tcolors.darkgrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: Offset(0, 2));
}
