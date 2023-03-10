import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../widgets/button_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // ! Background image holder + transparent color on scaffold to show the bg image
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/forgot-password.png'),
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
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 150, bottom: 175),
                        height: 65,
                        width: double.infinity,
                        child: const Text(
                          'Forgot Password',
                          style: defaultHeadingBold,
                        ),
                      ),

                      // ! Password Text Field Form
                      const PasswordForm(
                        hintText: 'Current Password',
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const PasswordForm(
                        hintText: 'New Password',
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const PasswordForm(
                        hintText: 'Confirm New Password',
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      //! add account validation
                      ButtonWidget(
                        buttonTitle: 'Confirm',
                        buttonBackgroundColor: ferryPrimaryColor,
                        buttonForegroundColor: Colors.white,
                        buttonSideColor: Colors.transparent,
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/Dashboard'),
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
// todo : validations and firebase
// todo : add obscure/unobscure button by adding setState in password

class PasswordForm extends StatelessWidget {
  final String hintText;
  const PasswordForm({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      enableSuggestions: true,
      autocorrect: false,
      // ! Pasword Security measures above ^
      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 20),
        hintText: hintText,
        hintStyle:
            const TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
        // ! White color underline when not tapped
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: ferryPrimaryColor),
        ),
        // ! White color underline when tapped and used
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: ferryPrimaryColor),
        ),
      ),
    );
  }
}
