import 'package:flutter/material.dart';
import 'package:fruit_hub/features/onboarding/presentation/models/onboarding_page_model.dart';
import 'package:fruit_hub/features/onboarding/presentation/widgets/onboarding_image_section.dart';
import 'package:fruit_hub/features/onboarding/presentation/widgets/onboarding_text_section.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    super.key,
    required this.pages,
    required this.pageController,
    required this.imageSize,
    required this.screenQuarterHeight,
    required this.onPageChanged,
  });

  final List<OnboardingPageModel> pages;
  final PageController pageController;
  final double imageSize;
  final double screenQuarterHeight;
  final ValueChanged<int> onPageChanged;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: pages.length,
      onPageChanged: onPageChanged,
      itemBuilder: (context, index) {
        return OnboardingPageItem(
          page: pages[index],
          imageSize: imageSize,
          screenQuarterHeight: screenQuarterHeight,
        );
      },
    );
  }
}

class OnboardingPageItem extends StatelessWidget {
  const OnboardingPageItem({
    super.key,
    required this.page,
    required this.imageSize,
    required this.screenQuarterHeight,
  });

  final OnboardingPageModel page;
  final double imageSize;
  final double screenQuarterHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnboardingImageSection(
          page: page,
          imageSize: imageSize,
          screenQuarterHeight: screenQuarterHeight,
        ),
        Expanded(child: OnboardingTextSection(page: page)),
      ],
    );
  }
}
