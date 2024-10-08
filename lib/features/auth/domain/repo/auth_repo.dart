import 'package:either_dart/either.dart';
import 'package:fruit_app/core/errors/failure.dart';
import 'package:fruit_app/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password);
  Future<Either<Failure, UserEntity>> signInWithGoogle();
  Future<Either<Failure, UserEntity>> signInWithFacebook();
  // Future<Either<Failure, UserEntity>> signInWithApple();
  Future<void> addUserData({required UserEntity user});
  Future<UserEntity> getUserData({ required String uid});
  Future<bool> isUserExist({ required String uid});

  Future<void> signOut();
}
