import 'package:flutter/material.dart';
import 'package:fruit_app/generated/l10n.dart';

class L10Helper {
  final BuildContext context;
  L10Helper(this.context);

  String get email => S.of(context).email;
  String get password => S.of(context).password;
  String get login => S.of(context).loginTitle;
  String get emailHint => S.of(context).emailHint;
  String get passwordHint => S.of(context).passwordHint;
  String get forgetPassword => S.of(context).forgotPassword;
  String get dontHaveAccount => S.of(context).dontHaveAccount;
  String get signUp => S.of(context).signUp;
  String get or => S.of(context).or;

  String get loginWithApple => S.of(context).loginWithApple;  
  String get loginWithFacebook => S.of(context).loginWithFacebook;  
  String get loginWithGoogle => S.of(context).loginWithGoogle;
}
