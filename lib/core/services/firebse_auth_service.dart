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
      if (e.code == 'weak-password') {
        throw CustomException(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'The account already exists for that email.');
      } else if (e.code == 'invalid-email') {
        throw CustomException(message: 'The email is invalid.');
      } else {
        throw CustomException(
            message: 'Something went wrong. Please try again');
      }
    } catch (e) {
      throw CustomException(message: 'Something went wrong. Please try again');
    }
  }
}
