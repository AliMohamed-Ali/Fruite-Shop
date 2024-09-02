import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/utils/app_images.dart';
import 'package:fruit_app/core/utils/app_routes.dart';
import 'package:fruit_app/core/widgets/custom_app_bar.dart';
import 'package:fruit_app/features/auth/presentation/cubits/signIn_cubit/signin_cubit.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/don_or_have_account_widget.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/signin_form.dart';
import 'package:fruit_app/features/onboarding/presentation/views/widgets/custom_social_button.dart';
import 'package:fruit_app/l10n/l10_helper.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

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
            const SignInForm(),
            const SizedBox(height: 33),
            DonORHaveAccountWidget(
              onTap: () => Navigator.pushNamed(context, AppRoutes.signUp),
              text1: l10n.dontHaveAccount,
              text2: l10n.signUp,
            ),
            const SizedBox(height: 33),
            const OrDivider(),
            const SizedBox(height: 16),
            CustomSocialButton(
              iconPath: Assets.imagesGoogle,
              label: l10n.loginWithGoogle,
              onPressed: () {
                context.read<SigninCubit>().signInWithGoogle();
              },
            ),
            Visibility(
              visible: Platform.isIOS,
              child: CustomSocialButton(
                iconPath: Assets.imagesApple,
                label: l10n.loginWithApple,
                onPressed: () {
                  // context.read<SigninCubit>().signInWithApple();
                },
              ),
            ),
            CustomSocialButton(
              iconPath: Assets.imagesFacebook,
              label: l10n.loginWithFacebook,
              onPressed: () {
                context.read<SigninCubit>().signInWithFacebook();
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
