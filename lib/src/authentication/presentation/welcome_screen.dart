import 'package:ferry_easy/shared/styles/app_colors.dart';
import 'package:ferry_easy/shared/styles/ui_helpers.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_button.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_divider_or.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_input_field.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_text.dart';
import 'package:ferry_easy/src/authentication/presentation/create_account.dart';
import 'package:ferry_easy/src/authentication/presentation/forgot_password.dart';
import 'package:ferry_easy/src/dashboard/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_storage/get_storage.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  static const id = 'welcome_screen';
  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FEBackgroundWidget(
      assetImage: const AssetImage('assets/images/login-welcome.png'),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                verticalSpaceLarge,
                verticalSpaceLarge,
                verticalSpaceLarge,
                FEText.onBoardingHead('Welcome Back'),
                verticalSpaceLarge,
                verticalSpaceLarge,
                verticalSpaceLarge,
                verticalSpaceLarge,
                FEInputField(
                  controller: _email,
                  placeholder: 'Username',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    }
                    return null;
                  },
                  leading: const Icon(
                    Icons.person,
                    color: kcPrimaryColor,
                  ),
                ),
                verticalSpaceRegular,
                FEInputField(
                  controller: _password,
                  placeholder: 'Password',
                  password: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    } else if (value.length < 6) {
                      return 'Password should be at least 6 characters';
                    }
                    return null;
                  },
                  leading: const Icon(
                    Icons.lock,
                    color: kcPrimaryColor,
                  ),
                ),
                verticalSpaceRegular,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(color: kcPrimaryColor),
                      ),
                      onTap: () =>
                          Navigator.of(context).pushNamed(ForgotPassword.id),
                    )
                  ],
                ),
                verticalSpaceRegular,
                FEButton(
                  title: 'Log In',
                  onTap: () async {
                    final isValid = _formKey.currentState?.validate();

                    try {
                      await _auth
                          .signInWithEmailAndPassword(
                              email: _email.text, password: _password.text)
                          .then((value) {
                        Navigator.pushReplacementNamed(context, Dashboard.id);
                        GetStorage().write('token', value.user!.uid);
                      });
                    } catch (error) {
                      var snackBar = SnackBar(
                          backgroundColor: Colors.red,
                          duration: const Duration(milliseconds: 2000),
                          content: Text(
                            error.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'Inter',
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                ),
                const FEDividerOrWidget(),
                FEButton(
                  title: 'Sign Up',
                  outline: true,
                  onTap: () =>
                      Navigator.of(context).pushNamed(CreateAccount.id),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Future logIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: emailController.text.trim(),
  //     password: passwordController.text.trim(),
  //   );
  // }
}
