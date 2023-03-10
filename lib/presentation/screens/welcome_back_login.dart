import 'package:ferry_easy/constants/constants.dart';
import 'package:ferry_easy/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class WelcomeBackLoginScreen extends StatelessWidget {
  const WelcomeBackLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // ! Background image holder + transparent color on scaffold to show the bg image
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/login-welcome.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                height: MediaQuery.of(context)
                    .size
                    .height, //! Avoid overflow, put it in a sized box and mediaquery of the device
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 150, bottom: 200),
                        height: 65,
                        width: double.infinity,
                        child: const Text(
                          'Welcome Back',
                          style: defaultHeadingBold,
                        ),
                      ),

                      // ! Username Text Field Form
                      const UsernameForm(),
                      const SizedBox(
                        height: 20,
                      ),
                      // ! Password Text Field Form

                      const PasswordForm(),
                      const SizedBox(height: 20),
                      // ! Forgot Password area
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            // ! Added Inkwell onTap function for forgot password
                            // todo: add navigating screen for forgot password
                            onTap: () => Navigator.of(context)
                                .pushNamed('/ForgotPasswordScreen'),
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: ferryPrimaryColor,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // ! Button Widget Login and Signup button
                      // todo: need to add on tap function for login/signup directory
                      // todo: validation for database login
                      ButtonWidget(
                        buttonTitle: 'Log In',
                        buttonBackgroundColor: ferryPrimaryColor,
                        buttonForegroundColor: Colors.white,
                        buttonSideColor: Colors.transparent,
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/Dashboard'),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                right: 15.0,
                              ),
                              child: const Divider(
                                color: Colors.grey,
                                height: 50,
                              ),
                            ),
                          ),
                          const Text(
                            'or',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 15.0,
                              ),
                              child: const Divider(
                                color: Colors.grey,
                                height: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ButtonWidget(
                        buttonTitle: 'Sign Up',
                        buttonBackgroundColor: Colors.transparent,
                        buttonForegroundColor: ferryPrimaryColor,
                        buttonSideColor: ferryPrimaryColor,
                        onPressed: () => Navigator.of(context)
                            .pushNamed('/CreateAccountScreen'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ! Usename Text widget and Password Text Widget modifiables
// todo : validators and firebase

class UsernameForm extends StatelessWidget {
  const UsernameForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
      decoration: const InputDecoration(
        hintText: 'Username',
        hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
        // ! White color underline when not tapped
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ferryPrimaryColor),
        ),
        // ! White color underline when tapped and used
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ferryPrimaryColor),
        ),
        // ! Icon beside the the form
        prefixIcon: IconTheme(
          data: IconThemeData(color: ferryPrimaryColor),
          child: Icon(Icons.person),
        ),
      ),
    );
  }
}

class PasswordForm extends StatelessWidget {
  const PasswordForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      enableSuggestions: true,
      autocorrect: false,
      // ! Pasword Security measures above ^
      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
      decoration: const InputDecoration(
        hintText: 'Password',
        hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
        // ! White color underline when not tapped
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ferryPrimaryColor),
        ),
        // ! White color underline when tapped and used
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ferryPrimaryColor),
        ),
        // ! Icon beside the the form
        prefixIcon: IconTheme(
          data: IconThemeData(color: ferryPrimaryColor),
          child: Icon(Icons.lock),
        ),
      ),
    );
  }
}
