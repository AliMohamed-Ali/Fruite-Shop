import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/helper_functions/error_snack_bar.dart';
import 'package:fruit_app/core/services/git_it_service.dart';
import 'package:fruit_app/core/utils/app_routes.dart';
import 'package:fruit_app/features/auth/domain/repo/auth_repo.dart';
import 'package:fruit_app/features/auth/presentation/cubits/signIn_cubit/signin_cubit.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/signin_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../core/helper_functions/get_error_message.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt<AuthRepo>()),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<SigninCubit, SigninState>(
            listener: (context, state) {
              if (state is SigninSuccess) {
                Navigator.pushReplacementNamed(context, AppRoutes.home);
              }
              if (state is SigninFailure) {
                String errorMessage = getErrorMessage(state.message, context);

                buildErrorBar(context, errorMessage);
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is SigninLoading,
                child: const SignInViewBody(),
              );
            },
          ),
        ),
      ),
    );
  }
}
