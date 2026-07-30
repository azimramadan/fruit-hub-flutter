import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:fruit_hub/generated/l10n.dart';

class EmailAddressTextFormField extends StatelessWidget {
  const EmailAddressTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: null, //TODO: Add your email validation logic here
      hintText: S.of(context).phoneNumberHintText,
    );
  }
}
