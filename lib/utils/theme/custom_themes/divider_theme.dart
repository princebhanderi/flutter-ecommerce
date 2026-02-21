import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class JJDividerTheme {
  JJDividerTheme._();

  static const DividerThemeData lightDividerTheme = DividerThemeData(
    thickness: 1,
    color: JJColors.softGreyColor,
    indent: 20,
    endIndent: 20,
  );

  static const DividerThemeData darkDividerTheme = DividerThemeData(
    thickness: 1,
    color: JJColors.darkGreyColor,
    indent: 20,
    endIndent: 20,
  );
}
