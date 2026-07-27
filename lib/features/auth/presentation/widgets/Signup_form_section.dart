import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:fruit_hub/generated/l10n.dart';

class SignupFormSection extends StatelessWidget {
  const SignupFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hintText: S.of(context).signupName,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(height: 16),
        CustomTextFormField(
          hintText: S.of(context).signupEmail,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(height: 16),
        CustomTextFormField(
          hintText: S.of(context).signupPassword,
          showPasswordToggle: true,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }
}
