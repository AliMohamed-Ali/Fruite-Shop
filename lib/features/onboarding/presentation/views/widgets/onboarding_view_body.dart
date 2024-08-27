import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/services/shared_preffrance_signletone.dart';
import 'package:fruit_app/core/utils/app_routes.dart';
import 'package:fruit_app/core/widgets/custom_button.dart';
import 'package:fruit_app/features/onboarding/presentation/views/widgets/onboarding_page_view.dart';
import 'package:fruit_app/generated/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../core/utils/app_colors.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late final PageController _pageController;
  var currentPage = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    _pageController.addListener(() {
      currentPage = _pageController.page!.round();
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnboardingPageView(controller: _pageController),
        ),
        DotsIndicator(
          dotsCount: 2,
          position: 1,
          decorator: DotsDecorator(
            color: currentPage == 0
                ? AppColors.secondaryColor
                : AppColors.darkPrimaryColor, // Inactive color
            activeColor: AppColors.darkPrimaryColor,
          ),
        ),
        const SizedBox(height: 29),
        Visibility(
          visible: currentPage == 1,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.only(
                right: kHorizontalPadding,
                left: kHorizontalPadding,
                bottom: kBottomPadding),
            child: CustomButton(
                name: S.of(context).onBoardingStart,
                onPressed: () async {
                  await Pref.setBool(kIsOnboardingCompleted, true);
                  Navigator.pushNamed(context, AppRoutes.login);
                }),
          ),
        ),
      ],
    );
  }
}
