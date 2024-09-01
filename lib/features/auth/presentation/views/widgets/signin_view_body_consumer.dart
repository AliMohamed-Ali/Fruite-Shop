import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/signin_view_body.dart';

import '../../../../../core/helper_functions/error_snack_bar.dart';
import '../../../../../core/helper_functions/get_error_message.dart';
import '../../../../../core/utils/app_routes.dart';
import '../../../../../core/widgets/custom_progress_hud.dart';
import '../../cubits/signIn_cubit/signin_cubit.dart';

class SignInViewBodyConsumer extends StatelessWidget {
  const SignInViewBodyConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            return CustomProgressHud(
              isLoading: state is SigninLoading,
              child: const SignInViewBody(),
            );
          },
        ),
      ),
    );
  }
}
