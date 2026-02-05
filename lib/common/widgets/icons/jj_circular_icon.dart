import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class JJCircularIcon extends StatelessWidget {
  /// A reusable circular icon container with customizable background and icon size.
  /// 
  /// Uses [JJSizes] for default values to maintain consistency.
  const JJCircularIcon({
    super.key,
    required this.icon,
    this.width = 56.0,
    this.height = 56.0, 
    this.size = JJSizes.iconLg,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final IconData icon;
  final double? width, height, size;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white.withValues(alpha: 0.9), 
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed, 
          icon: Icon(icon, color: color, size: size),
          padding: EdgeInsets.zero, // Remove default padding to center nicely
          constraints: const BoxConstraints(), // Remove default constraints
        ),
      ),
    );
  }
}
