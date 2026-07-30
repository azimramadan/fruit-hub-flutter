import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';

class ResendOtpTextButton extends StatelessWidget {
  const ResendOtpTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: Text(
          S.of(context).resendOtpTextButton,
          style: AppTextStyles.bodyBaseRegular.copyWith(
            color: AppColors.greenAlt[600],
          ),
        ),
      ),
    );
  }
}
