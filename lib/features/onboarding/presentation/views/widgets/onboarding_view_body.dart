import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/features/onboarding/presentation/views/widgets/onboarding_page_view.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: OnboardingPageView(),
        ),
        DotsIndicator(
          dotsCount: 2,
          position: 0,
          decorator: const DotsDecorator(
            color: Color(0xFF5DB957), // Inactive color
            activeColor: Color(0xFF1B5E37),
          ),
        )
      ],
    );
  }
}
