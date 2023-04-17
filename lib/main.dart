import 'package:ferry_easy/route.dart';
import 'package:ferry_easy/src/authentication/data/auth_repository.dart';
import 'package:ferry_easy/src/authentication/presentation/onboarding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import 'src/dashboard/application/bloc_exports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

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
      child: BlocProvider(
        create: (context) => TicketBloc(),
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
      ),
    );
  }
}
