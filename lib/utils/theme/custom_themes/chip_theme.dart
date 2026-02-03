import 'package:flutter/material.dart';

class JJChipTheme {
  JJChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    backgroundColor: Colors.grey.shade200,
    disabledColor: Colors.grey.shade400,
    selectedColor: Colors.blue.shade300,
    labelStyle: TextStyle(color: Colors.black),
    secondaryLabelStyle: TextStyle(color: Colors.white),
    padding: EdgeInsets.all(8.0),
    shape: StadiumBorder(),
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    backgroundColor: Colors.grey.shade800,
    disabledColor: Colors.grey.shade600,
    selectedColor: Colors.blue.shade700,
    labelStyle: TextStyle(color: Colors.white),
    secondaryLabelStyle: TextStyle(color: Colors.black),
    padding: EdgeInsets.all(8.0),
    shape: StadiumBorder(),
  );
}