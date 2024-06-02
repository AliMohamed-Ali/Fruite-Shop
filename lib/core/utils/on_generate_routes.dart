import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/router.dart';
import 'package:fruit_app/features/on%20boarding/presentation/views/on_boarding_view.dart';
import 'package:fruit_app/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.onBoarding:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case AppRoutes.splash:
      return MaterialPageRoute(builder: (context) => const SplashView());
    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
