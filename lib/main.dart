import 'package:ferry_easy/firebase_options.dart';
import 'package:ferry_easy/route.dart';
import 'package:ferry_easy/src/authentication/presentation/load_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'package:uni_links/uni_links.dart';

import 'src/dashboard/application/bloc_exports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  runZonedGuarded(() async {
    // Initialize deep linking
    await initUniLinks();

    runApp(MyApp(
      appRouter: AppRouter(),
    ));
  }, (Object error, StackTrace stackTrace) {
    // Handle errors here
  });
}

Future<void> initUniLinks() async {
  // Attach a listener to the incoming links
  uriLinkStream.listen((Uri? uri) {
    if (uri != null) {}
  }, onError: (Object err) {
    // Handle errors here
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TicketBloc(),
        ),
        BlocProvider(
          create: (context) => NotificationBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'FerryEasy',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          textTheme: Typography.whiteCupertino,
          fontFamily: 'Inter',
          scaffoldBackgroundColor: Colors.transparent,
        ),
        home: const LoadScreen(),
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
