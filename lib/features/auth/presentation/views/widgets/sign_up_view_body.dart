import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/utils/app_routes.dart';
import 'package:fruit_app/core/widgets/custom_app_bar.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/don_or_have_account_widget.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/sign_up_form.dart';
import 'package:fruit_app/l10n/l10_helper.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10Helper(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(height: 26),
            CustomAppBar(title: l10n.createAccount),
            const SizedBox(height: 24),
            const SignUpForm(),
            const SizedBox(height: 26),
            DonORHaveAccountWidget(
              route: AppRoutes.login,
              text1: l10n.alreadyHaveAccount,
              text2: l10n.login,
            )
          ],
        ),
      ),
    );
  }
}
