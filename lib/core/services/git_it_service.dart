import 'package:fruit_app/core/services/database_service.dart';
import 'package:fruit_app/core/services/firebse_auth_service.dart';
import 'package:fruit_app/core/services/firestore_service.dart';
import 'package:fruit_app/features/auth/data/repo_impl/auth_repo_impl.dart';
import 'package:fruit_app/features/auth/domain/repo/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<DatabaseService>(FireStoreService());
  getIt.registerSingleton<AuthRepo>(AuthRepoImpl(
      firebaseAuthService: getIt<FirebaseAuthService>(),
      databaseService: getIt<DatabaseService>()));
}
