import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class TOutlinedButtonTheme{
  TOutlinedButtonTheme._(); // avoid creating instances

// Light theme

static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(),
    foregroundColor: tSecondaryColor,
    side: BorderSide(color: tSecondaryColor),
    padding: EdgeInsets.symmetric(vertical: tButtonHeight),
  ),
);


// Dark Theme

static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    shape: RoundedRectangleBorder(),
    foregroundColor: tWhiteColor,
    side: BorderSide(color: tWhiteColor),
    padding: EdgeInsets.symmetric(vertical: tButtonHeight),
  ),
);

}