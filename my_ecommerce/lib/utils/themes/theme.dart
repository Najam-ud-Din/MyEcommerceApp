import 'package:flutter/material.dart';
import 'package:my_ecommerce/utils/themes/custom_themes/appbar_theme.dart';
import 'package:my_ecommerce/utils/themes/custom_themes/checkBoxTheme.dart';
import 'package:my_ecommerce/utils/themes/custom_themes/chipTheme.dart';
import 'package:my_ecommerce/utils/themes/custom_themes/elevated_button_theme.dart';
import 'package:my_ecommerce/utils/themes/custom_themes/outlined_button_theme.dart';
import 'package:my_ecommerce/utils/themes/custom_themes/text_field_theme.dart';
import 'package:my_ecommerce/utils/themes/custom_themes/text_theme.dart';

class TApptheme {
  TApptheme._(); // Private constructor to prevent instantiation
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lighttextTheme,
    chipTheme: Chiptheme.lightChipTheme,
    appBarTheme: Tappbartheme.lightappbartheme,
    checkboxTheme: CheckBoxTheme.lightCheckBoxTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TtextFormFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: TElevatedbuttonTheme.lightElevatedButtonTheme,
    useMaterial3: true,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darktextTheme,
    chipTheme: Chiptheme.darkChipTheme,
    appBarTheme: Tappbartheme.darkappbartheme,
    checkboxTheme: CheckBoxTheme.darkCheckBoxTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TtextFormFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: TElevatedbuttonTheme.darkElevatedButtonTheme,
    // textButtonTheme: TTextButtonTheme.darkTextButtonTheme,
    // textTheme: TTextTheme.darktextTheme,
  );
}
