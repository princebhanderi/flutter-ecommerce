import 'package:e_commerce/utils/theme/custom_themes/appbar_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/chip_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/text_field_theme.dart';
import 'package:e_commerce/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JJAppTheme {
  JJAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: JJTextTheme.lightTextTheme,
    elevatedButtonTheme: JJElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: JJOutlineButtonTheme.lightOutlineButtonTheme,
    checkboxTheme: JJCheckBoxTheme.lightCheckboxTheme,
    appBarTheme: JJAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: JJBottomSheetTheme.lightBottomSheetTheme,
    chipTheme: JJChipTheme.lightChipTheme,
    inputDecorationTheme: JJTextFieldTheme.lightTextFieldTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: JJTextTheme.darkTextTheme,
    elevatedButtonTheme: JJElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: JJOutlineButtonTheme.darkOutlineButtonTheme,
    checkboxTheme: JJCheckBoxTheme.darkCheckboxTheme,
    appBarTheme: JJAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: JJBottomSheetTheme.darkBottomSheetTheme,
    chipTheme: JJChipTheme.darkChipTheme,
    inputDecorationTheme: JJTextFieldTheme.darkTextFieldTheme,
  );
}
