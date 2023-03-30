import 'package:flutter/material.dart';
import 'package:loginpage/src/constants/colors.dart';

class TTextFormFieldTheme{
  TTextFormFieldTheme._();

  static InputDecorationTheme lightinputDecorationTheme =
      const InputDecorationTheme(

  border: OutlineInputBorder(),
  prefixIconColor: tSecondaryColor,
  floatingLabelStyle: TextStyle(color: tSecondaryColor),
  focusedBorder: OutlineInputBorder(
  borderSide: BorderSide(width: 2.0, color: tSecondaryColor),
      ));

  static InputDecorationTheme darkinputDecorationTheme =
  const InputDecorationTheme(

      border: OutlineInputBorder(),
      prefixIconColor: tPrimaryColor,
      floatingLabelStyle: TextStyle(color: tPrimaryColor),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2.0, color: tPrimaryColor),
      ));
}

