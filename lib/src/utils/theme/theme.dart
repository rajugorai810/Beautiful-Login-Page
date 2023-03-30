import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage/src/utils/theme/Text_field_theme.dart';
import 'package:loginpage/src/utils/theme/elevated_button_theme.dart';
import 'package:loginpage/src/utils/theme/outlined_button_theme.dart';

class TAppTheme{

  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TextTheme(
          headline2: GoogleFonts.montserrat(
            color: Colors.black87,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          subtitle2: GoogleFonts.poppins(
            color: Colors.black54,
            fontSize: 24,
          )
      ),
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TelevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightinputDecorationTheme,

  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
      textTheme: TextTheme(
          headline2: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          subtitle2: GoogleFonts.poppins(
            color: Colors.white60,
            fontSize: 24,
          )
      ),
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TelevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkinputDecorationTheme,
  );
}