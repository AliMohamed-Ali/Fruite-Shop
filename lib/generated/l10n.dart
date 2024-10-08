// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `App Name`
  String get appName {
    return Intl.message(
      'App Name',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Welcom to`
  String get onBoardingTitle1 {
    return Intl.message(
      'Welcom to',
      name: 'onBoardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Discover the freshest fruits in the world. Discover the freshest fruits in the world. Discover the freshest fruits in the world.`
  String get onBoardingSubtitle1 {
    return Intl.message(
      'Discover the freshest fruits in the world. Discover the freshest fruits in the world. Discover the freshest fruits in the world.',
      name: 'onBoardingSubtitle1',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get onBoardingSkip {
    return Intl.message(
      'Skip',
      name: 'onBoardingSkip',
      desc: '',
      args: [],
    );
  }

  /// `Search and Shopping`
  String get onBoardingTitle2 {
    return Intl.message(
      'Search and Shopping',
      name: 'onBoardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `We offer you the best carefully selected fruits. See details, photos and reviews to make sure you choose the perfect fruit`
  String get onBoardingSubtitle2 {
    return Intl.message(
      'We offer you the best carefully selected fruits. See details, photos and reviews to make sure you choose the perfect fruit',
      name: 'onBoardingSubtitle2',
      desc: '',
      args: [],
    );
  }

  /// ` Start Now`
  String get onBoardingStart {
    return Intl.message(
      ' Start Now',
      name: 'onBoardingStart',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginTitle {
    return Intl.message(
      'Login',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get emailHint {
    return Intl.message(
      'Enter your email',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get passwordHint {
    return Intl.message(
      'Enter your password',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password? `
  String get forgotPassword {
    return Intl.message(
      'Forgot Password? ',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? `
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message(
      'OR',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Login with Google`
  String get loginWithGoogle {
    return Intl.message(
      'Login with Google',
      name: 'loginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Login with Facebook`
  String get loginWithFacebook {
    return Intl.message(
      'Login with Facebook',
      name: 'loginWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Login with Apple`
  String get loginWithApple {
    return Intl.message(
      'Login with Apple',
      name: 'loginWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Enter your full name`
  String get fullNameHint {
    return Intl.message(
      'Enter your full name',
      name: 'fullNameHint',
      desc: '',
      args: [],
    );
  }

  /// `I agree to`
  String get agreeTo {
    return Intl.message(
      'I agree to',
      name: 'agreeTo',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get termsAndConditions {
    return Intl.message(
      'Terms and Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account? ',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get createNewAccount {
    return Intl.message(
      'Create New Account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get fieldIsRequired {
    return Intl.message(
      'This field is required',
      name: 'fieldIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `You must agree to the terms and conditions`
  String get validTermsAndConditions {
    return Intl.message(
      'You must agree to the terms and conditions',
      name: 'validTermsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `The password provided is too weak.`
  String get weakPassword {
    return Intl.message(
      'The password provided is too weak.',
      name: 'weakPassword',
      desc: '',
      args: [],
    );
  }

  /// `The account already exists for that email.`
  String get emailAlreadyInUse {
    return Intl.message(
      'The account already exists for that email.',
      name: 'emailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `Email is not valid.`
  String get invalidEmail {
    return Intl.message(
      'Email is not valid.',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `The password or email is invalid.`
  String get wrongPassword {
    return Intl.message(
      'The password or email is invalid.',
      name: 'wrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `The password or email is invalid.`
  String get userNotFound {
    return Intl.message(
      'The password or email is invalid.',
      name: 'userNotFound',
      desc: '',
      args: [],
    );
  }

  /// `An unknown error occurred.`
  String get unknownError {
    return Intl.message(
      'An unknown error occurred.',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Network request failed.`
  String get networkRequestFailed {
    return Intl.message(
      'Network request failed.',
      name: 'networkRequestFailed',
      desc: '',
      args: [],
    );
  }

  /// `This operation is not allowed.`
  String get operationNotAllowed {
    return Intl.message(
      'This operation is not allowed.',
      name: 'operationNotAllowed',
      desc: '',
      args: [],
    );
  }

  /// `Too many requests. Try again later.`
  String get tooManyRequests {
    return Intl.message(
      'Too many requests. Try again later.',
      name: 'tooManyRequests',
      desc: '',
      args: [],
    );
  }

  /// `The user account has been disabled by an administrator.`
  String get userDisabled {
    return Intl.message(
      'The user account has been disabled by an administrator.',
      name: 'userDisabled',
      desc: '',
      args: [],
    );
  }

  /// `Login Successful`
  String get loginSuccess {
    return Intl.message(
      'Login Successful',
      name: 'loginSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Good Morning !...`
  String get homeAppBarTitle {
    return Intl.message(
      'Good Morning !...',
      name: 'homeAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Search fruits ...`
  String get searchAppBarTitle {
    return Intl.message(
      'Search fruits ...',
      name: 'searchAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `The password or email is invalid.`
  String get invalidCredentials {
    return Intl.message(
      'The password or email is invalid.',
      name: 'invalidCredentials',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up Successful`
  String get signupSuccess {
    return Intl.message(
      'Sign Up Successful',
      name: 'signupSuccess',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
