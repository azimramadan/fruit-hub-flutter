import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_button.dart';
import 'package:fruit_hub/generated/l10n.dart';

class VerifyOtpButton extends StatelessWidget {
  const VerifyOtpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      label: S.of(context).verifyOtpButton,
      onPressed: () {},
      backgroundColor: AppColors.greenAlt[500],
      labelColor: AppColors.white,
      borderColor: AppColors.greenAlt[500],
    );
  }
}
