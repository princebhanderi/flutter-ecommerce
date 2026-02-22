import 'package:e_commerce/common/widgets/icons/jj_circular_icon.dart';
import 'package:e_commerce/common/widgets/texts/jj_brand_header.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/foundation.dart';
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
    // Skip splash screen delay on Web
    if (!kIsWeb) {
      // 2-second delay standard for production
      await Future.delayed(const Duration(seconds: 2));
    }

    if (mounted) {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final primaryColor = theme.primaryColor;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Responsive scaling logic
          final double currentShortestSide = constraints.maxWidth < constraints.maxHeight 
              ? constraints.maxWidth 
              : constraints.maxHeight;
          
          // Capping at 1.2 to prevent oversized elements on Web/Large screens
          final double scaleFactor = (currentShortestSide / 375.0).clamp(0.8, 1.2);
          
          final loaderStyle = isDark
              ? JJTextTheme.darkTextTheme.labelMedium?.copyWith(
                  fontSize: (JJTextTheme.darkTextTheme.labelMedium?.fontSize ?? 11) * scaleFactor,
                )
              : JJTextTheme.lightTextTheme.labelMedium?.copyWith(
                  fontSize: (JJTextTheme.lightTextTheme.labelMedium?.fontSize ?? 11) * scaleFactor,
                );

          // Using centralized JJSizes multiplied by scaleFactor
          final double spacing = JJSizes.defaultSpace * scaleFactor;
          final double bottomMargin = 40.0 * scaleFactor;
          
          // Icon constants
          final double iconContainerSize = 120.0 * scaleFactor;
          final double iconSize = JJSizes.iconXXl * scaleFactor; // 64.0 * scale

          return Stack(
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Reusable Circular Icon Component
                    JJCircularIcon(
                       icon: Icons.shopping_bag_outlined,
                       width: iconContainerSize,
                       height: iconContainerSize,
                       size: iconSize,
                       color: primaryColor,
                       backgroundColor: primaryColor.withOpacity(0.1),
                    ),
                    
                    SizedBox(height: spacing),
                    
                    // Reusable Brand Header Component
                    Transform.scale(
                      scale: scaleFactor,
                      child: const JJBrandHeader(),
                    ),
                  ],
                ),
              ),
              
              // Bottom Loader
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: bottomMargin),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        JJTexts.splashLoaderText,
                        style: loaderStyle,
                      ),
                      SizedBox(height: JJSizes.sm * scaleFactor),
                      SizedBox(
                        width: JJSizes.buttonWidth * scaleFactor,
                        child: LinearProgressIndicator(
                          color: primaryColor,
                          backgroundColor: theme.dividerColor.withOpacity(0.2),
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