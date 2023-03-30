import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class TelevatedButtonTheme{
  TelevatedButtonTheme._();
  
  //Light Theme

static final lightElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0,
    shape: RoundedRectangleBorder(),
    foregroundColor: tWhiteColor,
    backgroundColor: tSecondaryColor,
    side: BorderSide(color: tSecondaryColor),
    padding: EdgeInsets.symmetric(vertical: tButtonHeight),
  ),
);

// Dark Theme

static final darkElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0,
    shape: RoundedRectangleBorder(),
    foregroundColor: tWhiteColor,
    backgroundColor: tWhiteColor,
    side: BorderSide(color: tWhiteColor),
    padding: EdgeInsets.symmetric(vertical: tButtonHeight),
  ),
);
}