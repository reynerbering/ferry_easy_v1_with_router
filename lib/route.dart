import 'package:ferry_easy/src/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

import 'src/authentication/presentation/create_account.dart';
import 'src/authentication/presentation/forgot_password.dart';
import 'src/authentication/presentation/onboarding.dart';
import 'src/authentication/presentation/welcome_screen.dart';

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
