import 'package:ferry_easy/src/dashboard/dashboard.dart';
import 'package:ferry_easy/src/dashboard/load_details.dart';
import 'package:flutter/material.dart';

import 'src/authentication/presentation/create_account.dart';
import 'src/authentication/presentation/forgot_password.dart';
import 'src/authentication/presentation/onboarding.dart';
import 'src/authentication/presentation/welcome_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case WelcomeScreen.id:
        return MaterialPageRoute(
          builder: (context) => WelcomeScreen(),
        );
      case Onboarding.id:
        return MaterialPageRoute(
          builder: (context) => const Onboarding(),
        );
      case CreateAccount.id:
        return MaterialPageRoute(
          builder: (context) => const CreateAccount(),
        );
      case Dashboard.id:
        return MaterialPageRoute(
          builder: (context) => const Dashboard(),
        );
      case ForgotPassword.id:
        return MaterialPageRoute(
          builder: (context) => const ForgotPassword(),
        );
      case LoadDetails.id:
        return MaterialPageRoute(
          builder: (context) => const LoadDetails(),
        );

      default:
        return null;
    }
  }
}
