import 'package:flutter/material.dart';

class TElevatedbuttonTheme {
  TElevatedbuttonTheme._();

  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.blue,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side: BorderSide(
        color: Colors.blue,
      ),
      textStyle: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
    ),
  );

  static ElevatedButtonThemeData darkElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.blue,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side: BorderSide(
        color: Colors.blue,
      ),
      textStyle: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
    ),
  );
}
