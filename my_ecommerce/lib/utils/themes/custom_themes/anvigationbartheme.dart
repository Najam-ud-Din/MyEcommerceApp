import 'package:flutter/material.dart';

class Tnavigationbartheme {
  Tnavigationbartheme._();

  // Light Theme
  static final lightnavigationbartheme = NavigationBarThemeData(
    // ignore: deprecated_member_use
    labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>((states) {
      // ignore: deprecated_member_use
      final isSelected = states.contains(MaterialState.selected);
      return TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: isSelected ? Colors.black : Colors.grey,
      );
    }),
  );

  // Dark Theme
  static final darknavigationbartheme = NavigationBarThemeData(
    // ignore: deprecated_member_use
    labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>((states) {
      // ignore: deprecated_member_use
      final isSelected = states.contains(MaterialState.selected);
      return TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: isSelected ? Colors.white : Colors.white70,
      );
    }),
  );
}
