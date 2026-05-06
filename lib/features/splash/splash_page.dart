import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            SvgPicture.asset('assets/images/palm_leaf.svg'),
            Center(child: SvgPicture.asset('assets/images/logo.svg')),
            SvgPicture.asset('assets/images/outlined_circles.svg'),
          ],
        ),
      ),
    );
  }
}
