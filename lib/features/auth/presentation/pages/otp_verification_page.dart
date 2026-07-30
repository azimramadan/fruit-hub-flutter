import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/constants/app_assets.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/otp_verification_page_body.dart';
import 'package:fruit_hub/generated/l10n.dart';

class OtpVerificationPage extends StatelessWidget {
  const OtpVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(S.of(context).otpVerificationTitle),
        ),

        leading: Padding(
          padding: const EdgeInsets.only(top: 18.0, right: 16.0),
          child: IconButton(
            style: IconButton.styleFrom(
              shape: const CircleBorder(
                side: BorderSide(color: AppColors.mainWhite),
              ),
            ),
            icon: SvgPicture.asset(AppAssets.imagesArrowBack),
            onPressed: null, // TODO: Implement back navigation
          ),
        ),
      ),
      body: const OtpVerificationPageBody(),
    );
  }
}
