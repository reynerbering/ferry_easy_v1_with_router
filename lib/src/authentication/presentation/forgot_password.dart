import 'package:ferry_easy/shared/shared_exports.dart';
import 'package:ferry_easy/src/authentication/presentation/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  static const id = 'forgot_password';

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return FEBackgroundWidget(
      assetImage: const AssetImage(
        ('assets/images/forgot-password.png'),
      ),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                verticalSpaceLarge,
                verticalSpaceLarge,
                verticalSpaceLarge,
                FEText.onBoardingHead('Forgot Password'),
                verticalSpaceLarge,
                verticalSpaceLarge,
                verticalSpaceLarge,
                verticalSpaceLarge,
                FEInputField(controller: _email, placeholder: 'Email'),
                verticalSpaceLarge,
                verticalSpaceLarge,
                FEButton(
                  title: 'Continue',
                  onTap: () async {
                    _formKey.currentState?.validate();

                    try {
                      await _auth
                          .sendPasswordResetEmail(email: _email.text.trim())
                          .then((value) {
                        Navigator.of(context)
                            .pushReplacementNamed(WelcomeScreen.id);
                        var snackBar = const SnackBar(
                            backgroundColor: kcPrimaryColor,
                            duration: Duration(milliseconds: 2000),
                            content: Text(
                              'Check your email',
                              style: TextStyle(color: kcLightGrayColor),
                            ));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
