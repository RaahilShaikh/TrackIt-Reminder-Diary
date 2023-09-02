import 'package:flutter/material.dart';

class MyAppColors {
  static Color primaryWhiteColor = const Color(0xffFFFFFF);
  static Color primaryBlackColor = const Color(0xFF1C232D);
  static Color primaryBlueColor = const Color(0xFF6E69F7);
  static Color primaryExtraLightGreenColor = const Color(0xFFECEADC);
  static Color primaryYellowColor = const Color(0xFFFFD12B);
  static Color primarySkyBlueColor = const Color(0xFFC1F8FF);
  static Color primaryLightGreenColor = const Color(0xFFF8EBB8);
  static Color primaryGreenColor = const Color(0xFFB9FCB5);
  static Color primaryLightBlueColor = const Color(0xFFCDE6FA);
  static Color primaryDarkGreyColor = const Color(0xFF52ADA2);
  static Color primaryExtraDarkGreyColor = const Color(0xFF5F5E63);
  static Color primaryLightBlackColor = const Color(0xFF2E343D);
  static Color primaryLightThemeColor = const Color(0xFF1C232D);
  static Color primaryDarkThemeColor = const Color(0xff232930);
  static Color primaryRedColor = const Color(0xFFFF224B);


  static LinearGradient customAppLinearColor = LinearGradient(colors: [
    primaryLightThemeColor,
    primaryDarkThemeColor,
  ]);
}
