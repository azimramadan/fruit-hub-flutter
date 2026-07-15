import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_button.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.label,
    required this.iconPath,
    required this.onPressed,
  });

  final String label;
  final String iconPath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      label: label,
      iconPath: iconPath,
      onPressed: onPressed,
      labelColor: AppColors.grayscale[900],
      backgroundColor: AppColors.white,
      borderColor: AppColors.grayscale[400],
    );
  }
}
