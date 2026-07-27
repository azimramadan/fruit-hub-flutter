import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/create_account_section.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/forgot_password_button.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/login_button.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/login_form_section.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/or_divider.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/social_login_section.dart';

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
