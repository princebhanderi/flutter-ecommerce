import 'package:flutter/material.dart';

class JJCheckBoxTheme {
  JJCheckBoxTheme._();

  //customisaed checkbox theme for light and dark theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    fillColor: MaterialStateProperty.all(Colors.blue),
    checkColor: MaterialStateProperty.all(Colors.white),
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    fillColor: MaterialStateProperty.all(Colors.lightBlue),
    checkColor: MaterialStateProperty.all(Colors.black),
  );
}