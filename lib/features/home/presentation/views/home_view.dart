import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_routes.dart';
import 'package:fruit_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: HomeViewBody(),
    ));
  }
}
