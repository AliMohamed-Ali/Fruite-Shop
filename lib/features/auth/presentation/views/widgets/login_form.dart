import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';
import 'package:fruit_app/core/widgets/custom_button.dart';
import 'package:fruit_app/core/widgets/custom_text_form_field.dart';
import 'package:fruit_app/features/auth/presentation/cubits/signIn_cubit/signin_cubit.dart';
import 'package:fruit_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:fruit_app/l10n/l10_helper.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    final l10n = L10Helper(context);
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: emailController,
            labelText: l10n.email,
            hintText: l10n.emailHint,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            controller: passwordController,
            labelText: l10n.password,
            hintText: l10n.passwordHint,
            keyboardType: TextInputType.visiblePassword,
            obscureText: _obscureText,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
                color: const Color(0xFFC9CECF),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(l10n.forgetPassword,
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.lightPrimaryColor)),
            ],
          ),
          const SizedBox(height: 33),
          CustomButton(
            name: l10n.login,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.read<SigninCubit>().signInWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                    );
              }
            },
          ),
        ],
      ),
    );
  }
}
