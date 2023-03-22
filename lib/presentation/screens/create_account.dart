import 'package:ferry_easy/src/shared/app_colors.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_background_image_reusable.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_button.dart';

import '../../constants/constants.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      assetImage: const AssetImage(
        ('assets/images/create-account.png'),
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
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 150, bottom: 100),
                        height: 65,
                        width: double.infinity,
                        child: const Text(
                          'Create Account',
                          style: defaultHeadingBold,
                        ),
                      ),
                      // ! Username Text Field Form
                      const ContentForm(hintText: 'First name'),
                      const ContentForm(hintText: 'Last name'),
                      const ContentForm(hintText: 'Email'),
                      // todo: Need validators on email
                      const ContentForm(hintText: 'Username'),
                      // ! Password Text Field Form
                      const PasswordForm(),
                      const ContentForm(hintText: 'Street'),
                      const ContentForm(hintText: 'City'),
                      const ContentForm(hintText: 'Province'),
                      // todo: To edit this fields (contact no & date of birth store in DOUBLE,)
                      const ContentForm(hintText: 'Contact No.'),
                      const ContentForm(hintText: 'Date of Birth'),
                      // ! Button Widget Login and Signup button
                      // todo: need to add on tap function for login/signup directory
                      const SizedBox(
                        height: 40,
                      ),
                      FerryEasyButton(
                        title: 'Sign Up',
                        onTap: () =>
                            Navigator.of(context).pushNamed('/Dashboard'),
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

// ! Usename Text widget and Password Text Widget modifiables
// todo : validations and firebase

class ContentForm extends StatelessWidget {
  final String hintText;
  const ContentForm({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 20),
        hintText: hintText,
        hintStyle:
            const TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
        // ! White color underline when not tapped
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kcPrimaryColor),
        ),
        // ! White color underline when tapped and used
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kcPrimaryColor),
        ),
      ),
    );
  }
}

// todo : add obscure/unobscure button by adding setState in password

class PasswordForm extends StatelessWidget {
  const PasswordForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      obscureText: true,
      enableSuggestions: true,
      autocorrect: false,
      // ! Pasword Security measures above ^
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 20),
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
      ),
    );
  }
}
