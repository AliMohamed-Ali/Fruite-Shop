import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_app/core/errors/custom_exception.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception from FirebaseAuthService.createUserWithEmailAndPassword : ${e.toString()} , code : ${e.code}');
      if (e.code == 'weak-password') {
        throw CustomException(message: 'weakPassword');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'emailAlreadyInUse');
      } else if (e.code == 'invalid-email') {
        throw CustomException(message: 'invalidEmail');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'networkRequestFailed');
      } else {
        throw CustomException(message: 'unknownError');
      }
    } catch (e) {
      log('Exception from FirebaseAuthService.createUserWithEmailAndPassword : ${e.toString()}');
      throw CustomException(message: 'unknownError');
    }
  }

  Future<User> signInWithEmailAndPassword(  
      String email, String password) async {
    try { 
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception from FirebaseAuthService.signInWithEmailAndPassword : ${e.toString()} , code : ${e.code}');
      if (e.code == 'user-not-found') {
        throw CustomException(message: 'userNotFound');
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: 'wrongPassword');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'networkRequestFailed');
      } else {
        throw CustomException(message: 'unknownError');
      }
    } catch (e) {
      log('Exception from FirebaseAuthService.signInWithEmailAndPassword : ${e.toString()}');
      throw CustomException(message: 'unknownError');
    }
  }
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
