import 'package:flutter/material.dart';

class Tappbartheme {
  Tappbartheme._();

  static const lightappbartheme = AppBarTheme(
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  );

  static const darkappbartheme = AppBarTheme(
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  );
}
