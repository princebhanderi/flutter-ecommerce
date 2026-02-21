import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class JJOutlineButtonTheme {
  JJOutlineButtonTheme._();

  static OutlinedButtonThemeData lightOutlineButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.blue, side: BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: JJSizes.buttonHeight),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  );

  static OutlinedButtonThemeData darkOutlineButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.lightBlue, side: BorderSide(color: Colors.lightBlue),
      padding: const EdgeInsets.symmetric(vertical: JJSizes.buttonHeight),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
  );
}