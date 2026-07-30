import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/email_address_text_field.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/reset_password_button.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/reset_password_header.dart';

class ResetPasswordPageBody extends StatelessWidget {
  const ResetPasswordPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          const ResetPasswordHeader(),
          const SizedBox(height: 30),

          const EmailAddressTextFormField(),
          const SizedBox(height: 32),

          const ResetPasswordButton(),
        ],
      ),
    );
  }
}
