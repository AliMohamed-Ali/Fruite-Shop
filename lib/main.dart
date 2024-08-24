import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_routes.dart';
import 'package:fruit_app/core/utils/on_generate_routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruit_app/generated/l10n.dart';

void main() {
  runApp(const FruiteShop());
}

class FruiteShop extends StatelessWidget {
  const FruiteShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      title: 'Fruite Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Cairo',
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: AppRoutes.splash,
    );
  }
}
