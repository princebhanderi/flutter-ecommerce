import 'package:flutter/material.dart';

class JJColors{

  JJColors._();

  static const Color primaryColor = Color(0xFF0A73B7);
  static const Color primaryColorDark = Color(0xFF64B5F6);
  static const Color secondaryColor = Color(0xFFF5A623);
  static const Color backgroundColorLight = Color(0xFFFFFFFF);
  static const Color backgroundColorDark = Color(0xFF121212);
  static const Color textColorLight = Color(0xFF000000);
  static const Color textColorDark = Color(0xFFFFFFFF);
  static const Color lightContainerColor = Color(0xFFF0F0F0);
  static const Color darkContainerColor = Color(0xFF1E1E1E);
  static const Color accentColor = Color(0xFF03DAC6);
  static const Color textPrimaryLightColor = Color(0xFF212121);
  static const Color textPrimaryDarkColor = Color(0xFFE0E0E0);
  static const Color buttonPrimaryColor = Color(0xFF0A73B7);
  static const Color buttonSecondaryColor = Color(0xFFF5A623);
  static const Color buttonDisabledColor = Color(0xFFBDBDBD);
  static const Color borderColor = Color(0xFFBDBDBD);
  static const Color errorColor = Color(0xFFB00020);
  static const Color successColor = Color(0xFF4CAF50);  
  static const Color warningColor = Color(0xFFFFC107);
  static const Color infoColor = Color(0xFF2196F3);
  static const Color borderPrimaryColor = Color(0xFF0A73B7);
  static const Color borderSecondaryColor = Color(0xFFF5A623);
  static const Color blackColor = Color(0xFF000000);
  static const Color darkGreyColor = Color(0xFF212121);
  static const Color softGreyColor = Color(0xFFBDBDBD);
  static const Color lightGreyColor = Color(0xFFF5F5F5);
  static const Gradient linearGradientPrimary = LinearGradient(
    colors: [Color(0xFF0A73B7), Color(0xFF03DAC6)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const Gradient linearGradientSecondary = LinearGradient(
    colors: [Color(0xFFF5A623), Color(0xFFFFC107)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}