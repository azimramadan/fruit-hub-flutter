import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

abstract final class AppTextStyles {
  AppTextStyles._();

  static TextStyle _style({
    required double fontSize,
    required FontWeight fontWeight,
    required Color color,
  }) {
    return GoogleFonts.cairo(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  // Heading 1
  // 48px / 140%
  static final TextStyle heading1Regular = _style(
    fontSize: 48,
    fontWeight: FontWeight.w400,

    color: AppColors.textDark,
  );

  static final TextStyle heading1Bold = _style(
    fontSize: 48,
    fontWeight: FontWeight.w700,

    color: AppColors.textDark,
  );

  // Heading 2
  // 40px / 140%
  static final TextStyle heading2Regular = _style(
    fontSize: 40,
    fontWeight: FontWeight.w400,

    color: AppColors.textDark,
  );

  static final TextStyle heading2Bold = _style(
    fontSize: 40,
    fontWeight: FontWeight.w700,

    color: AppColors.textDark,
  );

  // Heading 3
  // 33px / 140%
  static final TextStyle heading3Regular = _style(
    fontSize: 33,
    fontWeight: FontWeight.w400,

    color: AppColors.textDark,
  );

  static final TextStyle heading3Bold = _style(
    fontSize: 33,
    fontWeight: FontWeight.w700,

    color: AppColors.textDark,
  );

  // Heading 4
  // 28px / 140%
  static final TextStyle heading4Regular = _style(
    fontSize: 28,
    fontWeight: FontWeight.w400,

    color: AppColors.textDark,
  );

  static final TextStyle heading4Bold = _style(
    fontSize: 28,
    fontWeight: FontWeight.w700,

    color: AppColors.textDark,
  );

  // Heading 5
  // 23px / 140%
  static final TextStyle heading5Regular = _style(
    fontSize: 23,
    fontWeight: FontWeight.w400,

    color: AppColors.textDark,
  );

  static final TextStyle heading5Bold = _style(
    fontSize: 23,
    fontWeight: FontWeight.w700,

    color: AppColors.textDark,
  );

  // Body Large
  // 19px / 140%
  static final TextStyle bodyLargeRegular = _style(
    fontSize: 19,
    fontWeight: FontWeight.w400,

    color: AppColors.textMedium,
  );

  static final TextStyle bodyLargeBold = _style(
    fontSize: 19,
    fontWeight: FontWeight.w700,

    color: AppColors.textMedium,
  );

  // Body Base
  // 16px / 140%
  static final TextStyle bodyBaseRegular = _style(
    fontSize: 16,
    fontWeight: FontWeight.w400,

    color: AppColors.textMedium,
  );

  static final TextStyle bodyBaseBold = _style(
    fontSize: 16,
    fontWeight: FontWeight.w700,

    color: AppColors.textMedium,
  );

  // Body Small
  // 13px
  static final TextStyle bodySmallRegular = _style(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    // 160%
    color: AppColors.textLight,
  );

  static final TextStyle bodySmallBold = _style(
    fontSize: 13,
    fontWeight: FontWeight.w700,
    // 170%
    color: AppColors.textLight,
  );

  // Body XSmall
  // 11px / 140%
  static final TextStyle bodyXSmallRegular = _style(
    fontSize: 11,
    fontWeight: FontWeight.w400,

    color: AppColors.textLight,
  );

  static final TextStyle bodyXSmallBold = _style(
    fontSize: 11,
    fontWeight: FontWeight.w700,

    color: AppColors.textLight,
  );

  // Labels
  static final TextStyle labelLarge = _style(
    fontSize: 16,
    fontWeight: FontWeight.w600,

    color: AppColors.textLight,
  );

  static final TextStyle labelMedium = _style(
    fontSize: 14,
    fontWeight: FontWeight.w500,

    color: AppColors.textMedium,
  );

  static final TextStyle labelSmall = _style(
    fontSize: 12,
    fontWeight: FontWeight.w500,

    color: AppColors.textLight,
  );

  // Special Styles
  static final TextStyle price = _style(
    fontSize: 18,
    fontWeight: FontWeight.w700,

    color: AppColors.textLight,
  );

  static final TextStyle priceLarge = _style(
    fontSize: 24,
    fontWeight: FontWeight.w800,

    color: AppColors.textLight,
  );
}
