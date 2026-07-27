import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';

class AlreadyHaveAccountSection extends StatelessWidget {
  const AlreadyHaveAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).signupHaveAccount,
          style: AppTextStyles.bodyBaseRegular.copyWith(
            color: AppColors.grayscale[400],
          ),
        ),
        SizedBox(width: 4),
        GestureDetector(
          onTap: () {},
          child: Text(
            S.of(context).signupLogin,
            style: AppTextStyles.bodyBaseRegular.copyWith(
              color: AppColors.greenAlt[500],
            ),
          ),
        ),
      ],
    );
  }
}
