import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/features/onboarding/presentation/models/onboarding_page_model.dart';

class OnboardingImageSection extends StatelessWidget {
  const OnboardingImageSection({
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
    return SizedBox(
      height: screenQuarterHeight * 2,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          OnboardingBackgroundImage(imagePath: page.imageBackgroundPath),
          OnboardingFruitImage(imagePath: page.imagePath, imageSize: imageSize),
        ],
      ),
    );
  }
}

class OnboardingBackgroundImage extends StatelessWidget {
  const OnboardingBackgroundImage({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: SvgPicture.asset(imagePath, fit: BoxFit.fill),
    );
  }
}

class OnboardingFruitImage extends StatelessWidget {
  const OnboardingFruitImage({
    super.key,
    required this.imagePath,
    required this.imageSize,
  });

  final String imagePath;
  final double imageSize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -imageSize * .001,
      child: SizedBox(
        width: imageSize,
        height: imageSize,
        child: FittedBox(
          fit: BoxFit.contain,
          child: SizedBox(
            width: 300,
            height: 300,
            child: SvgPicture.asset(imagePath, alignment: Alignment.center),
          ),
        ),
      ),
    );
  }
}
