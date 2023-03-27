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
          builder: (context) => const WelcomeScreen(),
        );
      case '/LoginSignUpScreen':
        return MaterialPageRoute(
          builder: (context) => const Onboarding(),
        );
      case '/CreateAccountScreen':
        return MaterialPageRoute(
          builder: (context) => const CreateAccount(),
        );
      case '/Dashboard':
        return MaterialPageRoute(
          builder: (context) => const Dashboard(),
        );
      case '/ForgotPasswordScreen':
        return MaterialPageRoute(
          builder: (context) => const ForgotPassword(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Onboarding(),
        );
    }
  }
}
