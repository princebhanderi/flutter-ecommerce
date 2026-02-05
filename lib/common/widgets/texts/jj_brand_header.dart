import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class JJBrandHeader extends StatelessWidget {
  /// Reusable header displaying the App Name and Tagline.
  /// 
  /// Automatically adapts to strictly defined theme styles.
  const JJBrandHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    // Strict adherence to JJTextTheme
    final headlineStyle = isDark
        ? JJTextTheme.darkTextTheme.headlineLarge
        : JJTextTheme.lightTextTheme.headlineLarge;
    final taglineStyle = isDark
        ? JJTextTheme.darkTextTheme.bodyLarge
        : JJTextTheme.lightTextTheme.bodyLarge;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          JJTexts.appName,
          style: headlineStyle,
        ),
        const SizedBox(height: JJSizes.sm), // 8.0
        Text(
          JJTexts.appTagLine,
          style: taglineStyle,
        ),
      ],
    );
  }
}
