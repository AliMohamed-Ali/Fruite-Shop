import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/widgets/custom_progress_hud.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/signup_view_body.dart';
import '../../../../../core/helper_functions/error_snack_bar.dart';
import '../../../../../core/helper_functions/get_error_message.dart';
import '../../../../../core/helper_functions/success_bar.dart';
import '../../../../../generated/l10n.dart';
import '../../cubits/signup_cubit/signup_cubit.dart';

class SignupViewBodyConsumer extends StatelessWidget {
  const SignupViewBodyConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<SignupCubit, SignupState>(
        listener: (context, state) {
          if (state is SignupSuccess) {
            showSuccessBar(context, S.of(context).signupSuccess);
            Navigator.pop(context);
          }
          if (state is SignupFailure) {
            String errorMessage = getErrorMessage(state.message, context);
            buildErrorBar(context, errorMessage);
          }
        },
        builder: (context, state) {
          return CustomProgressHud(
            isLoading: state is SignupLoading,
            child: const SignUpViewBody(),
          );
        },
      ),
    );
  }
}
