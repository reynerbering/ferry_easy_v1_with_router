import 'package:ferry_easy/src/dashboard/consume_special_ticket.dart';
import 'package:ferry_easy/src/dashboard/dashboard.dart';
import 'package:ferry_easy/src/dashboard/load_details.dart';
import 'package:ferry_easy/src/dashboard/profile.dart';
import 'package:ferry_easy/src/dashboard/ticket_confirmation.dart';
import 'package:ferry_easy/src/dashboard/consume_regular_ticket.dart';
import 'package:flutter/material.dart';

import 'src/authentication/presentation/create_account.dart';
import 'src/authentication/presentation/forgot_password.dart';
import 'src/authentication/presentation/onboarding.dart';
import 'src/authentication/presentation/welcome_screen.dart';
import 'src/dashboard/buy_ticket.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case WelcomeScreen.id:
        return MaterialPageRoute(
          settings: const RouteSettings(name: 'welcome'),
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
          settings: const RouteSettings(name: 'home'),
          builder: (context) => Dashboard(
            selectedIndex: 0,
          ),
        );
      case ForgotPassword.id:
        return MaterialPageRoute(
          builder: (context) => const ForgotPassword(),
        );
      case LoadDetails.id:
        return MaterialPageRoute(
          builder: (context) => const LoadDetails(),
        );
      case Profile.id:
        return MaterialPageRoute(
          builder: (context) => const Profile(),
        );
      case BuyTicket.id:
        return MaterialPageRoute(
          builder: (context) => const BuyTicket(),
        );

      case ConsumeRegularTicket.id:
        return MaterialPageRoute(
          builder: (context) => const ConsumeRegularTicket(),
        );
      case ConsumeSpecialTicket.id:
        return MaterialPageRoute(
          builder: (context) => const ConsumeSpecialTicket(),
        );

      default:
        return null;
    }
  }
}
