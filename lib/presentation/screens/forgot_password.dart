import 'package:ferry_easy/src/shared/ui_helpers.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_button.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_input_field.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_text.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      assetImage: const AssetImage(
        ('assets/images/forgot-password.png'),
      ),
      bgChild: Scaffold(
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
                const FerryEasyText.onBoardingHead('Forgot Password'),
                verticalSpaceLarge,
                verticalSpaceLarge,
                verticalSpaceLarge,
                verticalSpaceLarge,
                FerryEasyInputField(
                    controller: TextEditingController(),
                    password: true,
                    placeholder: 'Current Password'),
                verticalSpaceMedium,
                FerryEasyInputField(
                    controller: TextEditingController(),
                    password: true,
                    placeholder: 'New Password'),
                verticalSpaceMedium,
                FerryEasyInputField(
                    controller: TextEditingController(),
                    password: true,
                    placeholder: 'Confirm New Password'),
                verticalSpaceLarge,
                FerryEasyButton(
                  title: 'Dashboard',
                  onTap: () => Navigator.of(context).pushNamed('/Dashboard'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
