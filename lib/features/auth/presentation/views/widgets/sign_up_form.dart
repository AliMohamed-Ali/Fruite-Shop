import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_text_styles.dart';
import 'package:fruit_app/core/widgets/custom_button.dart';
import 'package:fruit_app/core/widgets/custom_text_form_field.dart';
import 'package:fruit_app/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruit_app/features/auth/presentation/views/widgets/terms_condition_widget.dart';
import 'package:fruit_app/l10n/l10_helper.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _obscureText = true;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController nameController;
  late GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10Helper(context);
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            controller: nameController,
            labelText: l10n.fullName,
            hintText: l10n.fullNameHint,
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 16),
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
          TermsAndConditionsWidget(
              onChanged: (val) {
                print(val);
              },
              onTermsTap: () {}),
          const SizedBox(height: 30),
          CustomButton(
            name: l10n.createNewAccount,
            onPressed: () {
              if (!formKey.currentState!.validate()) {
                setState(() {
                  autoValidateMode = AutovalidateMode.always;
                });
                return;
              }
              context.read<SignupCubit>().createUserWithEmailAndPassword(
                  emailController.text,
                  passwordController.text,
                  nameController.text);
            },
          ),
        ],
      ),
    );
  }
}
