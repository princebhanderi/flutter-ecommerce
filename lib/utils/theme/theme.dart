import 'package:e_commerce/utils/theme/custom_themes/appbar_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/divider_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/text_field_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/text_theme.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JJAppTheme {
  JJAppTheme._();

  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.light,
    primaryColor: JJColors.primaryColor,
    colorScheme: ColorScheme.fromSeed(seedColor: JJColors.primaryColor, brightness: Brightness.light),
    scaffoldBackgroundColor: Colors.white,
    textTheme: JJTextTheme.lightTextTheme,
    elevatedButtonTheme: JJElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: JJOutlineButtonTheme.lightOutlineButtonTheme,
    checkboxTheme: JJCheckBoxTheme.lightCheckboxTheme,
    appBarTheme: JJAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: JJBottomSheetTheme.lightBottomSheetTheme,
    chipTheme: JJChipTheme.lightChipTheme,
    inputDecorationTheme: JJTextFieldTheme.lightTextFieldTheme,
    dividerTheme: JJDividerTheme.lightDividerTheme,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: JJColors.primaryColor,
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.dark,
    primaryColor: JJColors.primaryColor,
    colorScheme: ColorScheme.fromSeed(seedColor: JJColors.primaryColor, brightness: Brightness.dark),
    scaffoldBackgroundColor: Colors.black,
    textTheme: JJTextTheme.darkTextTheme,
    elevatedButtonTheme: JJElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: JJOutlineButtonTheme.darkOutlineButtonTheme,
    checkboxTheme: JJCheckBoxTheme.darkCheckboxTheme,
    appBarTheme: JJAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: JJBottomSheetTheme.darkBottomSheetTheme,
    chipTheme: JJChipTheme.darkChipTheme,
    inputDecorationTheme: JJTextFieldTheme.darkTextFieldTheme,
    dividerTheme: JJDividerTheme.darkDividerTheme,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: JJColors.primaryColor,
    ),
  );
}
