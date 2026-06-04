import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
    required this.isVisible,
    required this.title,
  });

  final bool isVisible;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 300),
      firstChild: const SizedBox(height: 56),
      secondChild: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.greenAlt[500],
            foregroundColor: AppColors.white,
            minimumSize: const Size.fromHeight(56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: () {},
          child: Text(
            title,
            style: AppTextStyles.bodyBaseBold.copyWith(color: AppColors.white),
          ),
        ),
      ),
      crossFadeState: isVisible
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
    );
  }
}
