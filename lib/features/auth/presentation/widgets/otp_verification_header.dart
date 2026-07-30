import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';

class OtpVerificationHeader extends StatelessWidget {
  const OtpVerificationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).otpVerificationSubtitle,
      style: AppTextStyles.bodyBaseRegular,
    );
  }
}
