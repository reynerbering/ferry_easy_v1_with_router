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
        // textTheme: const TextTheme(
        //   displayLarge: TextStyle(
        //     fontSize: 24,
        //     fontWeight: FontWeight.bold,
        //     fontFamily: 'Inter',
        //   ),
        //   displayMedium: TextStyle(
        //     fontSize: 18,
        //     fontWeight: FontWeight.bold,
        //     fontFamily: 'Inter',
        //   ),
        //   bodyLarge: TextStyle(
        //     fontSize: 16,
        //     fontWeight: FontWeight.normal,
        //     fontFamily: 'Inter',
        //   ),
        //   bodyMedium: TextStyle(
        //     fontSize: 14,
        //     fontWeight: FontWeight.normal,
        //     fontFamily: 'Inter',
        //   ),
        // ),
      ),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
