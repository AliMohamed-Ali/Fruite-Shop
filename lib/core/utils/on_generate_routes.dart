import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_routes.dart';
import 'package:fruit_app/features/auth/presentation/views/signin_view.dart';
import 'package:fruit_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:fruit_app/features/home/home_view.dart';
import 'package:fruit_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruit_app/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.home:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case AppRoutes.signUp:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case AppRoutes.signin:
      return MaterialPageRoute(builder: (context) => const SignInView());
    case AppRoutes.onBoarding:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case AppRoutes.splash:
      return MaterialPageRoute(builder: (context) => const SplashView());
    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
