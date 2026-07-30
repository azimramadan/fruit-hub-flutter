import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_button.dart';
import 'package:fruit_hub/generated/l10n.dart';

class ResetPasswordButton extends StatelessWidget {
  const ResetPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      label: S.of(context).resetPasswordButton,
      onPressed: () {},
      backgroundColor: AppColors.greenAlt[500],
      labelColor: AppColors.white,
      borderColor: AppColors.greenAlt[500],
    );
  }
}
