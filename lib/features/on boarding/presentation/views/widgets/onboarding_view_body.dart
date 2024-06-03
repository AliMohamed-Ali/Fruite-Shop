import 'package:flutter/material.dart';
import 'package:fruit_app/features/on%20boarding/presentation/views/widgets/onboarding_page_view.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: OnboardingPageView(),
        )
      ],
    );
  }
}
