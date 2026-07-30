import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';
import 'package:fruit_hub/generated/l10n.dart';

class ResetPasswordHeader extends StatelessWidget {
  const ResetPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).resetPasswordSubtitle,
      style: AppTextStyles.bodyBaseRegular,
    );
  }
}
