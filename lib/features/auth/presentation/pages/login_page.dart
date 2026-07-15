import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/login_page_body.dart';
import 'package:fruit_hub/generated/l10n.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(S.of(context).loginTitle),
        ),
      ),
      body: const LoginPageBody(),
    );
  }
}
