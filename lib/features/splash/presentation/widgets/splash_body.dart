import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/constants/app_assets.dart';
import 'package:fruit_hub/main.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    // bool isRTL = Directionality.of(context) == TextDirection.rtl;
    return Column(
      // crossAxisAlignment: isRTL ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      crossAxisAlignment: isArabicLocale()
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(AppAssets.imagesPalmLeaf),
        Center(child: SvgPicture.asset(AppAssets.imagesLogo)),
        SvgPicture.asset(AppAssets.imagesOutlinedCircles),
      ],
    );
  }
}
