import 'package:bloc/bloc.dart';
import 'package:fruit_app/features/auth/domain/entites/user_entity.dart';
import 'package:fruit_app/features/auth/domain/repo/auth_repo.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(String email, String password,String name) async {
    emit(SignupLoading());
    final result = await authRepo.createUserWithEmailAndPassword(email, password,name);
    result.fold(
      (failure) => emit(SignupFailure(message: failure.message)),
      (user) => emit(SignupSuccess(user:user)),
    );
  }
}
