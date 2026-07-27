import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/Signup_form_section.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/already_have_account_section.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/signup_button.dart';

class SignupPageBody extends StatelessWidget {
  const SignupPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          const SignupFormSection(),
          const SizedBox(height: 16),

          const TermsAndConditionsSection(),
          const SizedBox(height: 32),

          const SignupButton(),
          const SizedBox(height: 24),
          const AlreadyHaveAccountSection(),
        ],
      ),
    );
  }
}

class TermsAndConditionsSection extends StatelessWidget {
  const TermsAndConditionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: Implement the terms and conditions section.
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'By signing up, you agree to our Terms of Service and Privacy Policy.',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
