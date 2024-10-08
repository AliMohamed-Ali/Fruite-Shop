// ignore: implementation_imports
import 'dart:developer';

// ignore: implementation_imports
import 'package:either_dart/src/either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_app/core/errors/custom_exception.dart';
import 'package:fruit_app/core/errors/failure.dart';
import 'package:fruit_app/core/services/database_service.dart';
import 'package:fruit_app/core/services/firebse_auth_service.dart';
import 'package:fruit_app/core/utils/backedn_endpoint.dart';
import 'package:fruit_app/features/auth/data/models/user_model.dart';
import 'package:fruit_app/features/auth/domain/entites/user_entity.dart';
import 'package:fruit_app/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseService databaseService;
  AuthRepoImpl(
      {required this.databaseService, required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
          email, password);
      var userEntity = UserModel(email: email, name: name, uid: user.uid);
      await addUserData(user: userEntity);
      return Right(userEntity);
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log('Exception from AuthRepoImpl.createUserWithEmailAndPassword : ${e.toString()}');
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, UserEntity>> _signIn(
      Future<User> Function() signInMethod) async {
    User? user;
    try {
      user = await signInMethod();
      UserEntity userEntity = UserModel.fromFirebaseUser(user);
      if (await isUserExist(uid: user.uid)) {
       await getUserData(uid: user.uid);
      }else{
        await addUserData(user: userEntity);
      }
      return Right(userEntity);
    } catch (e) {
      log('Exception from AuthRepoImpl._signIn: ${e.toString()}');
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user =
          await firebaseAuthService.signInWithEmailAndPassword(email, password);
      var userEntity = await getUserData(uid: user.uid);
      return Right(userEntity);
    } catch (e) {
      log('Exception from AuthRepoImpl.signInWithEmailAndPassword : ${e.toString()}');
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    return await _signIn(firebaseAuthService.signInWithGoogle);
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    return await _signIn(firebaseAuthService.signInWithFacebook);
  }

  @override
  Future<void> signOut() async {
    return await firebaseAuthService.signOut();
  }

  @override
  Future<void> addUserData({required UserEntity user}) async {
    await databaseService.setData(
        path: BackednEndpoint.addUserData, data: user.toMap(), docId: user.uid);
  }

  @override
  Future<UserEntity> getUserData({required String uid}) async {
    var user = await databaseService.getData(
        path: BackednEndpoint.getUserData, docId: uid);
    return UserModel.fromJson(user);
  }

  @override
  Future<bool> isUserExist({required String uid}) async {
    var isExist = await databaseService.isExist(
        path: BackednEndpoint.getUserExist, docId: uid);
    return isExist;
  }
  // @override
  // Future<Either<Failure, UserEntity>> signInWithApple()async {
  //   try {
  //     var user = await firebaseAuthService.signInWithApple();
  //     return Right(UserModel.fromFirebaseUser(user));
  //   } catch (e) {
  //     log('Exception from AuthRepoImpl.signInWithApple : ${e.toString()}');
  //     return Left(ServerFailure(e.toString()));
  //   }
  // }
}
