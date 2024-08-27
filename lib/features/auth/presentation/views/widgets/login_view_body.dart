import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_images.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';
import 'package:fruit_app/core/widgets/custom_app_bar.dart';
import 'package:fruit_app/core/widgets/or_divider.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/don_have_account_widget.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/login_form.dart';
import 'package:fruit_app/features/onboarding/presentation/views/widgets/custom_social_button.dart';
import 'package:fruit_app/generated/l10n.dart';
import 'package:fruit_app/l10n/l10_helper.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = L10Helper(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(height: 26),
            CustomAppBar(title: l10n.login),
            const SizedBox(height: 24),
            const LoginForm(),
            const SizedBox(height: 33),
            const DonHaveAccountWidget(),
            const SizedBox(height: 33),
            const OrDivider(),
            const SizedBox(height: 16),
            CustomSocialButton(
              iconPath: Assets.imagesGoogle,
              label: l10n.loginWithGoogle,
              onPressed: () {},
            ),
            CustomSocialButton(
              iconPath: Assets.imagesApple,
              label: l10n.loginWithApple,
              onPressed: () {},
            ),
            CustomSocialButton(
              iconPath: Assets.imagesFacebook,
              label: l10n.loginWithFacebook,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
