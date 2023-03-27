import 'package:ferry_easy/src/shared/app_colors.dart';
import 'package:ferry_easy/src/shared/ui_helpers.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_alert_box.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_button.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_divider_or.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_input_field.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundWidget(
            assetImage: AssetImage('assets/images/login-welcome.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: SizedBox(
              height: displayHeight(context),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    verticalSpaceLarge,
                    verticalSpaceLarge,
                    verticalSpaceLarge,
                    const FerryEasyText.onBoardingHead('Welcome Back'),
                    verticalSpaceLarge,
                    verticalSpaceLarge,
                    verticalSpaceLarge,
                    verticalSpaceLarge,
                    FerryEasyInputField(
                      controller: TextEditingController(),
                      placeholder: 'Username',
                      leading: const Icon(
                        Icons.person,
                        color: kcPrimaryColor,
                      ),
                    ),
                    verticalSpaceRegular,
                    FerryEasyInputField(
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
                    FerryEasyButton(
                      title: 'Log In',
                      onTap: () =>
                          Navigator.of(context).pushNamed('/Dashboard'),
                    ),
                    const DividerOrWidget(),
                    FerryEasyButton(
                      title: 'Sign Up',
                      outline: true,
                      onTap: () => Navigator.of(context)
                          .pushNamed('/CreateAccountScreen'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
