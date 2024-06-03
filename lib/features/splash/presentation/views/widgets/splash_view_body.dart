import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_app/core/constants/assets_images.dart';
import 'package:fruit_app/core/constants/router.dart';
import 'package:intl/intl.dart';

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

  void excuteNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, AppRoutes.onBoarding);
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
            mainAxisAlignment: Intl.getCurrentLocale() == "ar"
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
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
