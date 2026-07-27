import 'package:flutter/material.dart';
import 'package:fruit_hub/core/constants/app_assets.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/social_login_button.dart';
import 'package:fruit_hub/generated/l10n.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialLoginButton(
          label: S.of(context).loginUsingGoogle,
          iconPath: AppAssets.imagesGoogle,
          onPressed: () {},
        ),
        const SizedBox(height: 16),
        SocialLoginButton(
          label: S.of(context).loginUsingApple,
          iconPath: AppAssets.imagesApple,
          onPressed: () {},
        ),
        const SizedBox(height: 16),
        SocialLoginButton(
          label: S.of(context).loginUsingFacebook,
          iconPath: AppAssets.imagesFacebook,
          onPressed: () {},
        ),
      ],
    );
  }
}
