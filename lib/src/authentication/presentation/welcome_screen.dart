import 'package:ferry_easy/source/shared/app_colors.dart';
import 'package:ferry_easy/source/shared/ui_helpers.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_button.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_divider_or.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_input_field.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_text.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FEBackgroundWidget(
      assetImage: const AssetImage('assets/images/login-welcome.png'),
      bgChild: Scaffold(
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
                const FEText.onBoardingHead('Welcome Back'),
                verticalSpaceLarge,
                verticalSpaceLarge,
                verticalSpaceLarge,
                verticalSpaceLarge,
                FEInputField(
                  controller: emailController,
                  placeholder: 'Username',
                  leading: const Icon(
                    Icons.person,
                    color: kcPrimaryColor,
                  ),
                ),
                verticalSpaceRegular,
                FEInputField(
                  controller: passwordController,
                  placeholder: 'Password',
                  password: true,
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
                      onTap: () => Navigator.of(context)
                          .pushNamed('/ForgotPasswordScreen'),
                    )
                  ],
                ),
                verticalSpaceRegular,
                FEButton(
                    title: 'Log In',
                    onTap: () {
                      logIn();
                      Navigator.of(context).pushNamed('/Dashboard');
                    }),
                const FEDividerOrWidget(),
                FEButton(
                  title: 'Sign Up',
                  outline: true,
                  onTap: () =>
                      Navigator.of(context).pushNamed('/CreateAccountScreen'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future logIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
  }
}
