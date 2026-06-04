import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      right: 12,
      child: TextButton(
        onPressed: () {},
        child: Text(
          S.of(context).onboardingSkip,
          style: AppTextStyles.bodySmallRegular.copyWith(
            color: AppColors.grayscale[400],
          ),
        ),
      ),
    );
  }
}
