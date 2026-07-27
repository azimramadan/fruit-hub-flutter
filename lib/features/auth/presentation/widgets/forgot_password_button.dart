import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          S.of(context).loginForgotPassword,
          style: AppTextStyles.bodySmallRegular.copyWith(
            color: AppColors.greenAlt[600],
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
