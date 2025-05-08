import 'package:flutter/material.dart';

class Tcolors {
  Tcolors._();

  static const Color primaryColor = Color(0xFF4B68FF);
  static const Color secondaryColor = Color(0xFFFFE24B);
  static const Color accentColor = Color(0xFFb0c7ff);

  //Text Color
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C7570);
  static const Color textWhite = Colors.white;

  //Background Color
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const primarybackgroud = Color(0xFFF3F5FF);

  //Background Container Color
  static const Color lightContainer = Color(0xFFFFFFFF);
  static const Color darkContainer = Color(0xFF3A3A3A);

  //Error Color
  static const Color errorColor = Colors.red;
  static const Color successColor = Colors.green;
  static const Color warningColor = Colors.orange;
  static const Color infoColor = Colors.blue;

  //Border Color
  static const Color borderColor = Color(0xFFBDBDBD);

  //Neutral shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkgrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softgrey = Color(0xFFF4F4F4);
  static const Color lightgrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);

//transparent
  static const Color transparent = Colors.transparent;

  //Gradient Colors
  static const Gradient linearGradient = LinearGradient(
    colors: [Color(0xFF4B68FF), Color(0xFFFFE24B)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
