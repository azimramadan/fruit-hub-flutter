import 'package:flutter/material.dart';
import 'package:fruit_hub/features/onboarding/presentation/widgets/get_started_button.dart'
    show GetStartedButton;
import 'package:fruit_hub/features/onboarding/presentation/widgets/onboarding_indicator.dart';

class OnboardingBottomSection extends StatelessWidget {
  const OnboardingBottomSection({
    super.key,
    required this.pageController,
    required this.pageCount,
    required this.isLastPage,
    required this.title,
  });

  final PageController pageController;
  final int pageCount;
  final bool isLastPage;
  final String title;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * .25;

    return SizedBox(
      height: height,
      child: Column(
        children: [
          const Spacer(),
          OnboardingIndicator(
            pageController: pageController,
            pageCount: pageCount,
          ),
          const Flexible(child: SizedBox(height: 30)),
          GetStartedButton(isVisible: isLastPage, title: title),
          const Flexible(child: SizedBox(height: 32)),
        ],
      ),
    );
  }
}
