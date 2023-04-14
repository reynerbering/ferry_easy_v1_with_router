import 'package:ferry_easy/route.dart';
import 'package:ferry_easy/src/authentication/data/auth_repository.dart';
import 'package:ferry_easy/src/authentication/presentation/onboarding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: MaterialApp(
        title: 'FerryEasy',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          textTheme: Typography.whiteCupertino,
          fontFamily: 'Inter',
          scaffoldBackgroundColor: Colors.transparent,
        ),
        home: const Onboarding(),
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
