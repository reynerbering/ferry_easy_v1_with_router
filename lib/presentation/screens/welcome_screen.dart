import 'package:ferry_easy/src/shared/app_colors.dart';
import 'package:ferry_easy/src/shared/ui_helpers.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_button.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_divider_or.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_input_field.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
                  controller: TextEditingController(),
                  placeholder: 'Username',
                  leading: const Icon(
                    Icons.person,
                    color: kcPrimaryColor,
                  ),
                ),
                verticalSpaceRegular,
                FEInputField(
                  controller: TextEditingController(),
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
                  onTap: () => Navigator.of(context).pushNamed('/Dashboard'),
                ),
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
}
