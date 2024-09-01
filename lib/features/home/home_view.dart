import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_routes.dart';

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
