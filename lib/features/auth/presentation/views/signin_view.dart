import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/services/git_it_service.dart';
import 'package:fruit_app/features/auth/domain/repo/auth_repo.dart';
import 'package:fruit_app/features/auth/presentation/cubits/signIn_cubit/signin_cubit.dart';
import 'widgets/signin_view_body_consumer.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt.get<AuthRepo>()),
      child: const SignInViewBodyConsumer(),
    );
  }
}
