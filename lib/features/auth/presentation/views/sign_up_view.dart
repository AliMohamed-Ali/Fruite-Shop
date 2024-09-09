import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/services/git_it_service.dart';
import 'package:fruit_app/features/auth/domain/repo/auth_repo.dart';
import 'package:fruit_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/signup_view_body_consumer.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: const Scaffold(
        body: SignupViewBodyConsumer(),
      ),
    );
  }
}
