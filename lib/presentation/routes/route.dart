import 'package:ferry_easy/presentation/screens/forgot_password_screen.dart';
import 'package:ferry_easy/presentation/screens/welcome_back_login.dart';
import 'package:flutter/material.dart';

import '../screens/create_account.dart';
import '../screens/dashboard.dart';
import '../screens/log_in_sign_up_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/WelcomeBackLoginScreen':
        return MaterialPageRoute(
          builder: (context) => WelcomeBackLoginScreen(),
        );
      case '/LoginSignUpScreen':
        return MaterialPageRoute(
          builder: (context) => LogInSignUpScreen(),
        );
      case '/CreateAccountScreen':
        return MaterialPageRoute(
          builder: (context) => CreateAccountScreen(),
        );
      case '/Dashboard':
        return MaterialPageRoute(
          builder: (context) => Dashboard(),
        );
      case '/ForgotPasswordScreen':
        return MaterialPageRoute(
          builder: (context) => ForgotPasswordScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => LogInSignUpScreen(),
        );
    }
  }
}
