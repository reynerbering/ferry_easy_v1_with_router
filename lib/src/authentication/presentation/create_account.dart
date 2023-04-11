import 'package:ferry_easy/source/shared/ui_helpers.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_alert_box.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_button.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_input_field.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_text.dart';
import 'package:ferry_easy/src/dashboard/dashboard.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  static const id = 'create_account';

  @override
  Widget build(BuildContext context) {
    return FEBackgroundWidget(
      assetImage: const AssetImage(
        ('assets/images/create-account.png'),
      ),
      bgChild: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SizedBox(
            height: displayHeight(context),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  verticalSpaceLarge,
                  verticalSpaceLarge,
                  verticalSpaceLarge,
                  const FEText.onBoardingHead('Create Account'),
                  verticalSpaceLarge,
                  verticalSpaceLarge,
                  verticalSpaceLarge,
                  verticalSpaceLarge,
                  FEInputField(
                      controller: TextEditingController(),
                      placeholder: 'First Name'),
                  FEInputField(
                      controller: TextEditingController(),
                      placeholder: 'Last Name'),
                  FEInputField(
                    controller: TextEditingController(),
                    placeholder: 'Email',
                  ),
                  FEInputField(
                      controller: TextEditingController(),
                      placeholder: 'Username'),
                  FEInputField(
                    controller: TextEditingController(),
                    placeholder: 'Password',
                    password: true,
                  ),
                  FEInputField(
                      controller: TextEditingController(),
                      placeholder: 'Street'),
                  FEInputField(
                      controller: TextEditingController(), placeholder: 'City'),
                  FEInputField(
                      controller: TextEditingController(),
                      placeholder: 'Province'),
                  FEInputField(
                      controller: TextEditingController(),
                      placeholder: 'Contact No.'),
                  FEInputField(
                      controller: TextEditingController(),
                      placeholder: 'Date of Birth'),
                  verticalSpaceLarge,
                  FEButton(
                    title: 'Sign Up',
                    onTap: () => showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return FEAlertBox(
                          message: 'Registered Sucessfully!',
                          onTap: () =>
                              Navigator.popAndPushNamed(context, Dashboard.id),
                        );
                        // ! Sample confirmation box call
                        // return FEConfirmationBox(
                        //     message: 'Register?',
                        //     noTap: Navigator.of(context).pop,
                        //     yesTap: () => Navigator.popAndPushNamed(
                        //         context, '/Dashboard'));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
