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
    return Scaffold(
      backgroundColor: Colors.transparent,
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
                      leading: const Icon(Icons.person),
                    ),
                    verticalSpaceRegular,
                    FerryEasyInputField(
                      controller: TextEditingController(),
                      placeholder: 'Password',
                      password: true,
                      leading: const Icon(Icons.lock),
                    ),
                    verticalSpaceRegular,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          child: const Text('Forgot Password'),
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
                    )
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
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kcPrimaryColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kcPrimaryColor),
        ),
        prefixIcon: IconTheme(
          data: IconThemeData(color: kcPrimaryColor),
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
          borderSide: BorderSide(color: kcPrimaryColor),
        ),
        // ! White color underline when tapped and used
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kcPrimaryColor),
        ),
        // ! Icon beside the the form
        prefixIcon: IconTheme(
          data: IconThemeData(color: kcPrimaryColor),
          child: Icon(Icons.lock),
        ),
      ),
    );
  }
}
