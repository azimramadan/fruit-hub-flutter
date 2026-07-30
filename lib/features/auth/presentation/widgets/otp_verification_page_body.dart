import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/app_colors.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/otp_verification_header.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/resend_otp_text_button.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/verify_otp_button.dart';

class OtpVerificationPageBody extends StatelessWidget {
  const OtpVerificationPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          const OtpVerificationHeader(),
          const SizedBox(height: 30),
          //TODO: Implement the OTP input fields.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OtpBox(
                controller: TextEditingController(),
                focusNode: FocusNode(),
                onChanged: (value) {},
              ),
              OtpBox(
                controller: TextEditingController(),
                focusNode: FocusNode(),
                onChanged: (value) {},
              ),
              OtpBox(
                controller: TextEditingController(),
                focusNode: FocusNode(),
                onChanged: (value) {},
              ),
              OtpBox(
                controller: TextEditingController(),
                focusNode: FocusNode(),
                onChanged: (value) {},
              ),
            ],
          ),
          const SizedBox(height: 32),

          const VerifyOtpButton(),

          const SizedBox(height: 24),
          const ResendOtpTextButton(),
        ],
      ),
    );
  }
}

class OtpBox extends StatelessWidget {
  const OtpBox({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.onChanged,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      height: 56,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        maxLength: 1,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: AppTextStyles.bodyBaseRegular,
        onChanged: onChanged,
        decoration: InputDecoration(
          counterText: '',
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.warning),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.info, width: 2),
          ),
        ),
      ),
    );
  }
}
