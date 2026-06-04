import 'package:flutter/material.dart';
import 'package:fruit_hub/features/onboarding/presentation/models/onboarding_page_model.dart';
import 'package:fruit_hub/features/onboarding/presentation/widgets/onboarding_bottom_section.dart';
import 'package:fruit_hub/features/onboarding/presentation/widgets/onboarding_page_widget.dart';
import 'package:fruit_hub/generated/l10n.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.pages,
    required this.pageController,
    required this.currentPage,
    required this.isLastPage,
    required this.imageSize,
    required this.screenQuarterHeight,
    required this.onPageChanged,
  });

  final List<OnboardingPageModel> pages;
  final PageController pageController;
  final int currentPage;
  final bool isLastPage;
  final double imageSize;
  final double screenQuarterHeight;
  final ValueChanged<int> onPageChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: screenQuarterHeight * 3,
          child: OnboardingPageView(
            pages: pages,
            pageController: pageController,
            imageSize: imageSize,
            screenQuarterHeight: screenQuarterHeight,
            onPageChanged: onPageChanged,
          ),
        ),
        OnboardingBottomSection(
          pageController: pageController,
          pageCount: pages.length,
          isLastPage: isLastPage,
          title: S.of(context).onboardingGetStarted,
        ),
      ],
    );
  }
}
