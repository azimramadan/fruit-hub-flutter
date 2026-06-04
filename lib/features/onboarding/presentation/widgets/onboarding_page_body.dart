import 'package:flutter/material.dart';
import 'package:fruit_hub/core/constants/app_assets.dart';
import 'package:fruit_hub/features/onboarding/presentation/models/onboarding_page_model.dart';
import 'package:fruit_hub/features/onboarding/presentation/widgets/onboarding_content.dart';
import 'package:fruit_hub/features/onboarding/presentation/widgets/skip_button.dart';
import 'package:fruit_hub/generated/l10n.dart';

class OnboardingPageBody extends StatefulWidget {
  const OnboardingPageBody({super.key});

  @override
  State<OnboardingPageBody> createState() => _OnboardingPageBodyState();
}

class _OnboardingPageBodyState extends State<OnboardingPageBody> {
  List<OnboardingPageModel> get pages => [
    OnboardingPageModel(
      title: S.of(context).onboardingTitle1,
      subtitle: S.of(context).onboardingSubtitle1,
      imagePath: AppAssets.imagesOnboarding1,
      imageBackgroundPath: AppAssets.imagesOnboarding1Background,
    ),
    OnboardingPageModel(
      title: S.of(context).onboardingTitle2,
      subtitle: S.of(context).onboardingSubtitle2,
      imagePath: AppAssets.imagesOnboarding2,
      imageBackgroundPath: AppAssets.imagesOnboarding2Background,
    ),
  ];

  final PageController _pageController = PageController();

  int _currentPage = 0;

  bool get _isLastPage => _currentPage == pages.length - 1;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    final width = size.width;
    final height = size.height;

    final imageSize = width * .65;
    final screenQuarterHeight = height * .25;

    return Stack(
      children: [
        OnboardingContent(
          pages: pages,
          pageController: _pageController,
          currentPage: _currentPage,
          isLastPage: _isLastPage,
          imageSize: imageSize,
          screenQuarterHeight: screenQuarterHeight,
          onPageChanged: (index) {
            setState(() => _currentPage = index);
          },
        ),

        if (!_isLastPage) SkipButton(),
      ],
    );
  }
}
