import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class JJTextFieldTheme {
  JJTextFieldTheme._();

  static InputDecorationTheme get lightTextFieldTheme => InputDecorationTheme(
    filled: true,
    fillColor: JJColors.lightGreyColor,
    contentPadding: EdgeInsets.all(JJSizes.md),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(JJSizes.inputFieldRadius),
      borderSide: BorderSide(color: JJColors.textPrimaryLightColor, width: 1.5),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(JJSizes.inputFieldRadius),
      borderSide: BorderSide(color: JJColors.textPrimaryLightColor, width: 1.5),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(JJSizes.inputFieldRadius),
      borderSide: BorderSide(color: JJColors.primaryColor, width: 2.0),
    ),
    hintStyle: TextStyle(color: JJColors.textColorLight.withOpacity(0.6)),
  );

  static InputDecorationTheme get darkTextFieldTheme => InputDecorationTheme(
    filled: true,
    fillColor: JJColors.darkContainerColor,
    contentPadding: EdgeInsets.all(JJSizes.md),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(JJSizes.inputFieldRadius),
      borderSide: BorderSide(color: JJColors.textPrimaryDarkColor, width: 1.5),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(JJSizes.inputFieldRadius),
      borderSide: BorderSide(color: JJColors.textPrimaryDarkColor, width: 1.5),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(JJSizes.inputFieldRadius),
      borderSide: BorderSide(color: JJColors.primaryColor, width: 2.0),
    ),
    hintStyle: TextStyle(color: JJColors.textColorDark.withOpacity(0.6)),
  );
}