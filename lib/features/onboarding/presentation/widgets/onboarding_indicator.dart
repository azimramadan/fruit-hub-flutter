import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({
    super.key,
    required this.pageController,
    required this.pageCount,
  });

  final PageController pageController;
  final int pageCount;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: pageCount,
      effect: ExpandingDotsEffect(
        activeDotColor: AppColors.greenAlt[500],
        dotColor: AppColors.green[500],
        dotHeight: 10,
        dotWidth: 10,
        expansionFactor: 3,
        spacing: 8,
      ),
    );
  }
}
