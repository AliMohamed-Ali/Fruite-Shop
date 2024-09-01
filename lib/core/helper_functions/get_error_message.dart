import 'package:flutter/material.dart';
import 'package:fruit_app/generated/l10n.dart';

String getErrorMessage(String error, BuildContext context) {
  String errorMessage;
  switch (error) {
    case 'emailAlreadyInUse':
      errorMessage = S.of(context).emailAlreadyInUse;
      break;
    case 'weakPassword':
      errorMessage = S.of(context).weakPassword;
      break;
    case 'invalidEmail':
      errorMessage = S.of(context).invalidEmail;
      break;
    case 'networkRequestFailed':
      errorMessage = S.of(context).networkRequestFailed;
      break;
    case 'wrongPassword':
      errorMessage = S.of(context).wrongPassword;
      break;
    case 'userNotFound':
      errorMessage = S.of(context).userNotFound;
      break;
    case 'operationNotAllowed':
      errorMessage = S.of(context).operationNotAllowed;
      break;
    case 'userDisabled':
      errorMessage = S.of(context).userDisabled;
      break;
    case 'tooManyRequests':
      errorMessage = S.of(context).tooManyRequests;
      break;
    

    default:
      errorMessage = S.of(context).unknownError;
      break;
  }

  return errorMessage;
}
