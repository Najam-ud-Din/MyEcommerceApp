import 'package:flutter/material.dart';

class TtextFormFieldTheme {
  TtextFormFieldTheme._();

  ///customizable light text theme
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: TextStyle().copyWith(fontSize: 14, color: Colors.black),
    hintStyle: TextStyle().copyWith(fontSize: 14, color: Colors.black),
    errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle().copyWith(color: Colors.black),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(color: Colors.grey, width: 1.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(color: Colors.grey, width: 1.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(color: Colors.black12, width: 1.0),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(color: Colors.red, width: 1.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(color: Colors.orange, width: 2),
    ),
  );

  ///customizable dark text theme
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: TextStyle().copyWith(fontSize: 14, color: Colors.white),
    hintStyle: TextStyle().copyWith(fontSize: 14, color: Colors.white),
    errorStyle: TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle().copyWith(color: Colors.white),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(color: Colors.grey, width: 1.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(color: Colors.grey, width: 1.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(color: Colors.white12, width: 1.0),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(color: Colors.red, width: 1.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(14)),
      borderSide: BorderSide(color: Colors.orange, width: 2),
    ),
  );
}
