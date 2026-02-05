import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _navigate();
    });
  }

  Future<void> _navigate() async {
    await Future.delayed(const Duration(seconds: 20));
    if (mounted) {
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brightness = theme.brightness;
    final isDark = brightness == Brightness.dark;

    // Strict adherence to JJTextTheme
    final headlineStyle = isDark
        ? JJTextTheme.darkTextTheme.headlineLarge
        : JJTextTheme.lightTextTheme.headlineLarge;
    final taglineStyle = isDark
        ? JJTextTheme.darkTextTheme.bodyLarge
        : JJTextTheme.lightTextTheme.bodyLarge;
    final loaderStyle = isDark
        ? JJTextTheme.darkTextTheme.labelMedium
        : JJTextTheme.lightTextTheme.labelMedium;

    final primaryColor = theme.primaryColor;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: LayoutBuilder(
        builder: (context, constraints) {

          // Logic for scaling based on screen size patterns (Mobile < 600, Tablet < 900, Desktop > 900)
          final double currentShortestSide = constraints.maxWidth < constraints.maxHeight 
              ? constraints.maxWidth 
              : constraints.maxHeight;
          
          // Using a simple scalar relative to a baseline mobile width (e.g., 375.0)
          final double scaleFactor = (currentShortestSide / 375.0).clamp(0.8, 1.5);

          final double iconSize = 64.0 * scaleFactor;
          final double iconPadding = 32.0 * scaleFactor;
          final double spacing = 24.0 * scaleFactor;
          final double bottomPadding = 40.0 * scaleFactor;

          return Stack(
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Icon Container
                    Container(
                      padding: EdgeInsets.all(iconPadding),
                      decoration: BoxDecoration(
                        color: primaryColor.withValues(alpha: 0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        size: iconSize,
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(height: spacing),
                    // App Name
                    Text(
                      JJTexts.appName,
                      style: headlineStyle,
                    ),
                    SizedBox(height: spacing / 2), // Slightly closer
                    // Tagline
                    Text(
                      JJTexts.appTagLine,
                      style: taglineStyle,
                    ),
                  ],
                ),
              ),
              // Bottom Loader
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: bottomPadding),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        JJTexts.splashLoaderText,
                        style: loaderStyle,
                      ),
                      SizedBox(height: spacing / 2),
                      SizedBox(
                        width: 120 * scaleFactor, // Scaled width
                        child: LinearProgressIndicator(
                          color: primaryColor,
                          backgroundColor: theme.dividerColor.withValues(alpha: 0.2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}