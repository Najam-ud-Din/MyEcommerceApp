import 'package:flutter/material.dart';
import 'package:my_ecommerce/utils/constants/sizes.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingwithappbarheight = EdgeInsets.only(
    top: Sizes.appBarHeight,
    left: Sizes.defaultSpacing,
    bottom: Sizes.defaultSpacing,
    right: Sizes.defaultSpacing,
  );

  static var defaultSpacing;
}
