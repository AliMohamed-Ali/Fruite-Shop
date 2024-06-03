import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_app/features/on%20boarding/presentation/views/widgets/onboarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingViewBody(),
    );
  }
}
