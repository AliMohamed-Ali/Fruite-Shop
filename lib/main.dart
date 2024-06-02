import 'package:flutter/material.dart';
import 'package:fruit_app/core/constants/router.dart';
import 'package:fruit_app/core/utils/on_generate_routes.dart';
import 'package:fruit_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FruiteShop());
}

class FruiteShop extends StatelessWidget {
  const FruiteShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fruit Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: AppRoutes.splash,
    );
  }
}
