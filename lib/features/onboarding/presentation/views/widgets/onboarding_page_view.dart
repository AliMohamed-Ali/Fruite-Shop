import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_images.dart';
import 'package:fruit_app/features/onboarding/presentation/views/widgets/page_view_item.dart';
import 'package:fruit_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, this.controller});
  final PageController? controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: [
        PageViewItem(
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(S.of(context).onBoardingTitle1),
              const Text("Fruit"),
              const Text("HUB"),
            ],
          ),
          subtitle: S.of(context).onBoardingSubtitle1,
          isVisible: true,
        ),
        PageViewItem(
          image: Assets.imagesPageViewItem2Image,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
          title: Text(S.of(context).onBoardingTitle2),
          subtitle: S.of(context).onBoardingSubtitle2,
          isVisible: false,
        ),
      ],
    );
  }
}
