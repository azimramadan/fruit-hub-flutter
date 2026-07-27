import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:fruit_hub/generated/l10n.dart';

class LoginFormSection extends StatelessWidget {
  const LoginFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hintText: S.of(context).loginEmail,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
        ),
        SizedBox(height: 16),
        CustomTextFormField(
          hintText: S.of(context).loginPassword,
          showPasswordToggle: true,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }
}
