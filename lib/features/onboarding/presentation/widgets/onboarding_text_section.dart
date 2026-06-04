import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';
import 'package:fruit_hub/features/onboarding/presentation/models/onboarding_page_model.dart';

class OnboardingTextSection extends StatelessWidget {
  const OnboardingTextSection({super.key, required this.page});

  final OnboardingPageModel page;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 3),
        OnboardingTitle(title: page.title),
        const Spacer(flex: 2),
        OnboardingSubtitle(subtitle: page.subtitle),
        const Spacer(flex: 3),
      ],
    );
  }
}

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    if (title.contains('FruitHUB')) {
      return OnboardingRichTitle(title: title);
    }

    return Text(
      title,
      textAlign: TextAlign.center,
      style: AppTextStyles.heading5Bold,
    );
  }
}

class OnboardingRichTitle extends StatelessWidget {
  const OnboardingRichTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final parts = title.split('FruitHUB');

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: AppTextStyles.heading1Regular,
        children: [
          TextSpan(text: parts[0], style: AppTextStyles.heading5Bold),
          TextSpan(
            text: 'Fruit',
            style: AppTextStyles.heading5Bold.copyWith(
              color: AppColors.greenAlt[500],
            ),
          ),
          TextSpan(
            text: 'HUB',
            style: AppTextStyles.heading5Bold.copyWith(
              color: AppColors.orange[500],
            ),
          ),
          if (parts.length > 1)
            TextSpan(text: parts[1], style: AppTextStyles.heading5Bold),
        ],
      ),
    );
  }
}

class OnboardingSubtitle extends StatelessWidget {
  const OnboardingSubtitle({super.key, required this.subtitle});

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        subtitle,
        textAlign: TextAlign.center,
        style: AppTextStyles.bodySmallBold,
      ),
    );
  }
}
