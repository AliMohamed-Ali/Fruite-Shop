import 'package:flutter/material.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SignUpViewBody(),
      ),
    );
  }
}
