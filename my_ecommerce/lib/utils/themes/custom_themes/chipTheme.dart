import 'package:flutter/material.dart';

class Chiptheme {
  Chiptheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withValues(),
    labelStyle: const TextStyle(
      color: Colors.black,
    ),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white,
  );
  

  /////customizable dark text theme
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withValues(),
    labelStyle: const TextStyle(
      color: Colors.white,
    ),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white,
  );  
}
