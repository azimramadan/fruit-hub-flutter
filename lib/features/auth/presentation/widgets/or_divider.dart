import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: AppColors.mainBlack20)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'أو',
            style: AppTextStyles.bodyBaseRegular.copyWith(
              color: AppColors.grayscale[900],
            ),
          ),
        ),
        const Expanded(child: Divider(color: AppColors.mainBlack20)),
      ],
    );
  }
}
