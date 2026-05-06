import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primary (Green)
  static const Map<int, Color> primary = {
    50: Color(0xFFEEFBEA),
    100: Color(0xFFDDF7D4),
    200: Color(0xFFBBEFA9),
    300: Color(0xFF98E77E),
    400: Color(0xFF76DF53),
    500: Color(0xFF6CDC46),
    600: Color(0xFF43AC20),
    700: Color(0xFF328118),
    800: Color(0xFF225610),
    900: Color(0xFF112B08),
  };

  // Secondary (Orange)
  static const Map<int, Color> secondary = {
    50: Color(0xFFFEF6E7),
    100: Color(0xFFFDECCE),
    200: Color(0xFFFADA9E),
    300: Color(0xFFF8C76D),
    400: Color(0xFFF5B53D),
    500: Color(0xFFF4A91F),
    600: Color(0xFFC2820A),
    700: Color(0xFF926107),
    800: Color(0xFF614105),
    900: Color(0xFF312002),
  };

  // Neutral (Grayscale)
  static const Map<int, Color> neutral = {
    50: Color(0xFFF2F3F3),
    100: Color(0xFFE4E6E7),
    200: Color(0xFFCACECE),
    300: Color(0xFFAFB5B6),
    400: Color(0xFF949D9E),
    500: Color(0xFF4E5556),
    600: Color(0xFF616A6B),
    700: Color(0xFF494F50),
    800: Color(0xFF313535),
    900: Color(0xFF181A1B),
  };

  // Extra Green (Green1)
  static const Map<int, Color> greenAlt = {
    50: Color(0xFFEBF9F1),
    100: Color(0xFFD7F4E3),
    200: Color(0xFFB0E8C7),
    300: Color(0xFF88DDAB),
    400: Color(0xFF60D290),
    500: Color(0xFF1B5E37),
    600: Color(0xFF2D9F5D),
    700: Color(0xFF227745),
    800: Color(0xFF174F2E),
    900: Color(0xFF0B2817),
  };

  // Text
  static const Color textDark = Color(0xFF0C0D0D);
  static const Color textMedium = Color(0xFF616A6B);
  static const Color textLight = Color(0xFF949D9E);

  // Status
  static const Color success = Color(0xFF43AC20);
  static const Color error = Color(0xFFD32F2F);
  static const Color warning = Color(0xFFC2820A);
  static const Color info = Color(0xFF2D9F5D);
}
