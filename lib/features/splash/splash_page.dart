import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/constants/app_assets.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(AppAssets.imagesPalmLeaf),
            Center(child: SvgPicture.asset(AppAssets.imagesLogo)),
            SvgPicture.asset(AppAssets.imagesOutlinedCircles),
          ],
        ),
      ),
    );
  }
}
