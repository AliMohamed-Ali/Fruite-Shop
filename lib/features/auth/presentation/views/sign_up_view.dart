import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/helper_functions/error_snack_bar.dart';
import 'package:fruit_app/core/helper_functions/get_error_message.dart';
import 'package:fruit_app/core/services/git_it_service.dart';
import 'package:fruit_app/features/auth/domain/repo/auth_repo.dart';
import 'package:fruit_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:fruit_app/generated/l10n.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        body: Builder(builder: (context) {
          return SafeArea(
            child: BlocConsumer<SignupCubit, SignupState>(
              listener: (context, state) {
                if (state is SignupSuccess) {
                  Navigator.pop(context);
                }
                if (state is SignupFailure) {
                  String errorMessage = getErrorMessage(state.message, context);
                  buildErrorBar(context, errorMessage);
                }
              },
              builder: (context, state) {
                return ModalProgressHUD(
                  inAsyncCall: state is SignupLoading,
                  child: const SignUpViewBody(),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
