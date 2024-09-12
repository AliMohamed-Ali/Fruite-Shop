import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/utils/app_routes.dart';
import 'package:fruit_app/features/auth/presentation/cubits/signIn_cubit/signin_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              // context.read<SigninCubit>().signOut();

              Navigator.pushNamed(context, AppRoutes.signin);
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Container(),
    ));
  }
}
