import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lighttextTheme = TextTheme(
    //HEADLINE SECTION
    // This is the main heading of the app, usually used for titles or important sections.
    headlineLarge: TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headlineSmall: TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),

    //TITLE SECTION
    titleLarge: TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleMedium: TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleSmall: TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),

    //BOdY SECTION
    bodyLarge: TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    bodyMedium: TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    bodySmall: TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),

    //LABEL SECTION
    labelLarge: TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    labelMedium: TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
  );

  static TextTheme darktextTheme = TextTheme(
    //HEADLINE SECTION
    // This is the main heading of the app, usually used for titles or important sections.
    headlineLarge: TextStyle().copyWith(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: TextStyle().copyWith(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headlineSmall: TextStyle().copyWith(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),

    //TITLE SECTION
    titleLarge: TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleMedium: TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    titleSmall: TextStyle().copyWith(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),

    //BOdY SECTION
    bodyLarge: TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    bodyMedium: TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    bodySmall: TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),

    //LABEL SECTION
    labelLarge: TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    labelMedium: TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
  );
}
