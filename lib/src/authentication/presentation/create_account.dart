import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:ferry_easy/source/shared/app_colors.dart';
import 'package:ferry_easy/source/shared/ui_helpers.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_alert_box.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_button.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_input_field.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_text.dart';
import 'package:ferry_easy/src/dashboard/dashboard.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  static const id = 'create_account';

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  List<DateTime?> _datePicked = [
    DateTime.now(),
  ];
  @override
  Widget build(BuildContext context) {
    return FEBackgroundWidget(
      assetImage: const AssetImage(
        ('assets/images/create-account.png'),
      ),
      child: Scaffold(
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
                    placeholder: 'Birthday',
                    trailing: const Icon(Icons.date_range),
                    trailingTapped: () => showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return CalendarDatePicker2WithActionButtons(
                            value: _datePicked,
                            onValueChanged: (date) {
                              setState(() {
                                _datePicked = date;
                              });
                            },
                            config: CalendarDatePicker2WithActionButtonsConfig(
                              selectedDayHighlightColor: kcPrimaryColor,
                            ),
                          );
                        }),
                  ),
                  verticalSpaceLarge,
                  FEButton(
                    title: 'Sign Up',
                    onTap: () => showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return FEAlertBox(
                          message: 'Thank you for your purchase!',
                          onTap: () => Navigator.popUntil(
                            context,
                            ModalRoute.withName('welcome'),
                          ),
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
