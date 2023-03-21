import 'package:ferry_easy/constants/constants.dart';
import 'package:ferry_easy/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/button_widget.dart';

class LogInSignUpScreen extends StatelessWidget {
  const LogInSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ! Background image perting hasola from Box Decoration
          // ! Background image technique is to wrap arn box deco and boxfit.cover
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/login.png'),
                  fit: BoxFit.cover),
            ),
          ),
          // ! Background image container above

          // ! Centered padding with 25px
          // ! Crossaxislignment horizontal start and MainAxisAlignment start from bottom of the screen

          Center(
            // ! Padding to wrap around and indention
            child: Padding(
              padding: const EdgeInsets.all(25),
              // ! Column for straight line, starting from the bottom and starting from the left
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Escape The Line',
                    style: defaultHeadingBold,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Get your tickets in advance.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Avoid standing in line to purchase a ticket.',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 40),
                  // ! Directs to button_widget.dart
                  ButtonWidget(
                    buttonBackgroundColor: Colors.white,
                    buttonForegroundColor: kcPrimaryColor,
                    buttonSideColor: Colors.transparent,
                    buttonTitle: 'Log In',
                    onPressed: () => Navigator.of(context)
                        .pushNamed('/WelcomeBackLoginScreen'),
                  ),
                  SizedBox(height: 20),
                  // ! Directs to button_widget.dart
                  ButtonWidget(
                    buttonBackgroundColor: Colors.transparent,
                    buttonForegroundColor: Colors.white,
                    buttonSideColor: Colors.white,
                    buttonTitle: 'Sign Up',
                    onPressed: () =>
                        Navigator.of(context).pushNamed('/CreateAccountScreen'),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
