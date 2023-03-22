import 'package:ferry_easy/presentation/screens/forgot_password.dart';
import 'package:ferry_easy/presentation/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

import '../screens/create_account.dart';
import '../screens/dashboard.dart';
import '../screens/onboarding.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/WelcomeBackLoginScreen':
        return MaterialPageRoute(
          builder: (context) => WelcomeScreen(),
        );
      case '/LoginSignUpScreen':
        return MaterialPageRoute(
          builder: (context) => Onboarding(),
        );
      case '/CreateAccountScreen':
        return MaterialPageRoute(
          builder: (context) => CreateAccount(),
        );
      case '/Dashboard':
        return MaterialPageRoute(
          builder: (context) => Dashboard(),
        );
      case '/ForgotPasswordScreen':
        return MaterialPageRoute(
          builder: (context) => ForgotPassword(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Onboarding(),
        );
    }
  }
}
