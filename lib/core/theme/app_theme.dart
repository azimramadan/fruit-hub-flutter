import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,

    appBarTheme: AppBarTheme(
      toolbarHeight: 75,
      centerTitle: true,
      backgroundColor: AppColors.white,
      surfaceTintColor: AppColors.white,
      elevation: 0,
      titleTextStyle: AppTextStyles.bodyLargeBold.copyWith(
        color: AppColors.grayscale[900],
      ),
      iconTheme: IconThemeData(color: AppColors.grayscale[900]),
    ),
  );
}
