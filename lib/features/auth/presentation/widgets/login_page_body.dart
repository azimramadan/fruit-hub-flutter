import 'package:flutter/material.dart';
import 'package:fruit_hub/core/constants/app_assets.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_button.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/or_divider.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/social_login_button.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          const LoginFormSection(),
          const SizedBox(height: 16),

          const ForgotPasswordButton(),
          const SizedBox(height: 32),

          const LoginButton(),
          const SizedBox(height: 32),
          const CreateAccountSection(),
          const SizedBox(height: 32),
          const OrDivider(),
          const SizedBox(height: 20),
          const SocialLoginSection(),
        ],
      ),
    );
  }
}

class CreateAccountSection extends StatelessWidget {
  const CreateAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لا تملك حساب؟',
          style: AppTextStyles.bodyBaseRegular.copyWith(
            color: AppColors.grayscale[400],
          ),
        ),
        SizedBox(width: 4),
        GestureDetector(
          onTap: () {},
          child: Text(
            'قم بإنشاء حساب',
            style: AppTextStyles.bodyBaseRegular.copyWith(
              color: AppColors.greenAlt[500],
            ),
          ),
        ),
      ],
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      label: 'تسجيل الدخول',
      onPressed: () {},
      backgroundColor: AppColors.greenAlt[500],
      labelColor: AppColors.white,
      borderColor: AppColors.greenAlt[500],
    );
  }
}

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          'نسيت كلمة المرور؟',
          style: AppTextStyles.bodySmallRegular.copyWith(
            color: AppColors.greenAlt[600],
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class LoginFormSection extends StatelessWidget {
  const LoginFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextFormField(
          hintText: 'البريد الإلكتروني',
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
        ),
        SizedBox(height: 16),
        CustomTextFormField(
          hintText: 'كلمة المرور',
          showPasswordToggle: true,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }
}

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialLoginButton(
          label: 'تسجيل بواسطة جوجل',
          iconPath: AppAssets.imagesGoogle,
          onPressed: () {},
        ),
        const SizedBox(height: 16),
        SocialLoginButton(
          label: 'تسجيل بواسطة ابل',
          iconPath: AppAssets.imagesApple,
          onPressed: () {},
        ),
        const SizedBox(height: 16),
        SocialLoginButton(
          label: 'تسجيل بواسطة فيسبوك',
          iconPath: AppAssets.imagesFacebook,
          onPressed: () {},
        ),
      ],
    );
  }
}
