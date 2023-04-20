import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:ferry_easy/shared/styles/app_colors.dart';
import 'package:ferry_easy/shared/styles/ui_helpers.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_alert_box.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_button.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_input_field.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_text.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  static const id = 'create_account';

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

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
                  // FEInputField(
                  //     controller: TextEditingController(),
                  //     placeholder: 'First Name'),
                  // FEInputField(
                  //     controller: TextEditingController(),
                  //     placeholder: 'Last Name'),
                  FEInputField(
                    controller: _email,
                    placeholder: 'Email',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
                      }
                      return null;
                    },
                  ),
                  verticalSpaceLarge,
                  // FEInputField(
                  //     controller: TextEditingController(),
                  //     placeholder: 'Username'),
                  FEInputField(
                    controller: _password,
                    placeholder: 'Password',
                    password: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      } else if (value.length < 6) {
                        return 'Password should be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                  // FEInputField(
                  //     controller: TextEditingController(),
                  //     placeholder: 'Street'),
                  // FEInputField(
                  //     controller: TextEditingController(), placeholder: 'City'),
                  // FEInputField(
                  //     controller: TextEditingController(),
                  //     placeholder: 'Province'),
                  // FEInputField(
                  //     controller: TextEditingController(),
                  //     placeholder: 'Contact No.'),
                  // FEInputField(
                  //   controller: TextEditingController(),
                  //   placeholder: 'Birthday',
                  //   trailing: const Icon(Icons.date_range),
                  //   trailingTapped: () => showModalBottomSheet(
                  //       context: context,
                  //       builder: (BuildContext context) {
                  //         return CalendarDatePicker2WithActionButtons(
                  //           value: _datePicked,
                  //           onValueChanged: (date) {
                  //             setState(() {
                  //               _datePicked = date;
                  //             });
                  //           },
                  //           config: CalendarDatePicker2WithActionButtonsConfig(
                  //             selectedDayHighlightColor: kcPrimaryColor,
                  //           ),
                  //         );
                  //       }),
                  // ),
                  verticalSpaceLarge,
                  FEButton(
                    title: 'Sign Up',
                    onTap: () async {
                      final isValid = _formKey.currentState?.validate();
                      try {
                        await _auth.createUserWithEmailAndPassword(
                            email: _email.text, password: _password.text);
                        if (context.mounted) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return FEAlertBox(
                                message: 'User Registered Succesfully!',
                                onTap: () => Navigator.popUntil(
                                  context,
                                  ModalRoute.withName('welcome'),
                                ),
                              );
                            },
                          );
                        }
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
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
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
