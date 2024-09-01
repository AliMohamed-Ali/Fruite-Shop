import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/services/custom_bloc_observer.dart';
import 'package:fruit_app/core/services/git_it_service.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_routes.dart';
import 'package:fruit_app/core/utils/on_generate_routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruit_app/generated/l10n.dart';
import 'core/services/shared_preferance_signletone.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupGetit();
  await Pref.init();
  Bloc.observer = CustomBlocObserver();
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
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.darkPrimaryColor,
        ),
        fontFamily: 'Cairo',
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: AppRoutes.splash,
    );
  }
}
