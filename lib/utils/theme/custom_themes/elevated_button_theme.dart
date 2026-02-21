import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class JJElevatedButtonTheme {
  JJElevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: JJColors.buttonPrimaryColor,
      foregroundColor: JJColors.backgroundColorLight,
      disabledBackgroundColor: JJColors.buttonDisabledColor,
      disabledForegroundColor: JJColors.softGreyColor,
      padding: const EdgeInsets.symmetric(vertical: JJSizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: JJSizes.fontSizeLg,
        fontWeight: FontWeight.bold,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(JJSizes.buttonRadius),
      ),
    ),
  );

  static ElevatedButtonThemeData darkElevatedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: JJColors.buttonPrimaryColor,
      foregroundColor: JJColors.backgroundColorLight,
      disabledBackgroundColor: JJColors.buttonDisabledColor,
      disabledForegroundColor: JJColors.softGreyColor,
      padding: const EdgeInsets.symmetric(vertical: JJSizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: JJSizes.fontSizeLg,
        fontWeight: FontWeight.bold,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(JJSizes.buttonRadius),
      ),
    ),
  );
}