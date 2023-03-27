import 'package:ferry_easy/src/shared/ui_helpers.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_alert_box.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_button.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_input_field.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_text.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundWidget(
            assetImage: const AssetImage(
              ('assets/images/create-account.png'),
            ),
            bgChild: Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                height: displayHeight(context),
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
                      const FerryEasyText.onBoardingHead('Create Account'),
                      verticalSpaceLarge,
                      verticalSpaceLarge,
                      verticalSpaceLarge,
                      verticalSpaceLarge,
                      FerryEasyInputField(
                          controller: TextEditingController(),
                          placeholder: 'First Name'),
                      FerryEasyInputField(
                          controller: TextEditingController(),
                          placeholder: 'Last Name'),
                      FerryEasyInputField(
                          controller: TextEditingController(),
                          placeholder: 'Email'),
                      FerryEasyInputField(
                          controller: TextEditingController(),
                          placeholder: 'Username'),
                      FerryEasyInputField(
                        controller: TextEditingController(),
                        placeholder: 'Password',
                        password: true,
                      ),
                      FerryEasyInputField(
                          controller: TextEditingController(),
                          placeholder: 'Street'),
                      FerryEasyInputField(
                          controller: TextEditingController(),
                          placeholder: 'City'),
                      FerryEasyInputField(
                          controller: TextEditingController(),
                          placeholder: 'Province'),
                      FerryEasyInputField(
                          controller: TextEditingController(),
                          placeholder: 'Contact No.'),
                      FerryEasyInputField(
                          controller: TextEditingController(),
                          placeholder: 'Date of Birth'),
                      verticalSpaceLarge,
                      FerryEasyButton(
                        title: 'Sign Up',
                        onTap: () => showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return FerryEasyAlertBox(
                              message: 'Registered \n Sucessfully!',
                              onTap: () => Navigator.popAndPushNamed(
                                  context, '/Dashboard'),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
