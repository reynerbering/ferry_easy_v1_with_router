import 'package:ferry_easy/presentation/routes/route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FerryEasy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: Typography.whiteCupertino,
        fontFamily: 'Inter',
        scaffoldBackgroundColor: Colors.transparent,
      ),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
