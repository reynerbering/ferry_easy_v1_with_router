import 'package:ferry_easy/constants/constants.dart';
import 'package:ferry_easy/src/shared/app_colors.dart';
import 'package:ferry_easy/src/shared/ui_helpers.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_background_image_reusable.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      assetImage: const AssetImage(
        ('assets/images/login-welcome.png'),
      ),
      bgChild: Scaffold(
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
                      const UsernameForm(),
                      const SizedBox(
                        height: 20,
                      ),
                      const PasswordForm(),
                      verticalSpaceRegular,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () => Navigator.of(context)
                                .pushNamed('/ForgotPasswordScreen'),
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: kcPrimaryColor,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      verticalSpaceRegular,
                      FerryEasyButton(
                        title: 'Log In',
                        onTap: () =>
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
