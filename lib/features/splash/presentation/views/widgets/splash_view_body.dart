import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/constants.dart';
import 'package:fruit_app/core/services/shared_preferance_signletone.dart';
import 'package:fruit_app/core/utils/app_images.dart';
import 'package:fruit_app/core/utils/app_routes.dart';
import 'package:fruit_app/core/helper_functions/is_arabic.dart';
// ignore: depend_on_referenced_packages

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();

    excuteNavigation();
  }

  void excuteNavigation() async {
    bool? onboardingCompleted = Pref.getBool(kIsOnboardingCompleted);

    Future.delayed(const Duration(seconds: 3), () {
      if (onboardingCompleted == false) {
        Navigator.pushReplacementNamed(context, AppRoutes.onBoarding);
      } else {
        Navigator.pushReplacementNamed(context, AppRoutes.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment:
                isArabic() ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                Assets.imagesPlant,
              ),
            ],
          ),
          SvgPicture.asset(
            Assets.imagesLogo,
          ),
          SvgPicture.asset(
            Assets.imagesSplashBottom,
            // width: double.infinity,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
