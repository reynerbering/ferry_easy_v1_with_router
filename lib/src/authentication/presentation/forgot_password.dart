import 'package:ferry_easy/shared/styles/ui_helpers.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_button.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_input_field.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_text.dart';
import 'package:ferry_easy/src/dashboard/dashboard.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  static const id = 'forgot_password';

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
                const FEText.onBoardingHead('Forgot Password'),
                verticalSpaceLarge,
                verticalSpaceLarge,
                verticalSpaceLarge,
                verticalSpaceLarge,
                FEInputField(
                    controller: TextEditingController(),
                    password: true,
                    placeholder: 'Email'),
                verticalSpaceMedium,
                FEInputField(
                    controller: TextEditingController(),
                    password: true,
                    placeholder: 'New Password'),
                verticalSpaceMedium,
                FEInputField(
                    controller: TextEditingController(),
                    password: true,
                    placeholder: 'Confirm New Password'),
                verticalSpaceLarge,
                FEButton(
                  title: 'Continue',
                  onTap: () => Navigator.pop(context),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
