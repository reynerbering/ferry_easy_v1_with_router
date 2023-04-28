import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ferry_easy/shared/styles/ui_helpers.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_alert_box.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_button.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_input_field.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_text.dart';
import 'package:ferry_easy/src/authentication/domain/user_model.dart';
import 'package:ferry_easy/src/authentication/presentation/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  static const id = 'create_account';

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
  DateTime? _selectedDate;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _street = TextEditingController();
  final TextEditingController _city = TextEditingController();
  final TextEditingController _province = TextEditingController();
  final TextEditingController _zipcode = TextEditingController();
  final TextEditingController _contactNum = TextEditingController();
  final RegExp regex = RegExp(r'^\d+$');
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _registerUser() {
    final user = UserModel(
        uid: _auth.currentUser!.uid,
        firstName: _firstName.text.trim(),
        lastName: _lastName.text.trim(),
        email: _email.text.trim(),
        username: _username.text.trim(),
        address: {
          'city': _city.text.trim(),
          'province': _province.text.trim(),
          'street': _street.text.trim(),
          'zipcode': _zipcode.text.trim(),
        },
        contactNum: _contactNum.text.trim(),
        birthDate: _selectedDate!,
        wallet: 0,
        isVerified: false,
        profileImg: '',
        validId: '');

    addUser(user);
  }

  bool validateInteger(String? value) {
    final RegExp regex = RegExp(r'^\d+$');
    if (value == null || value.isEmpty) {
      return false;
    } else if (!regex.hasMatch(value)) {
      return false;
    }
    return true;
  }

  bool validateEmail(String email) {
    // Define a regular expression for the email pattern
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    // Check if the email matches the regular expression
    if (!emailRegExp.hasMatch(email)) {
      return false;
    }

    return true;
  }

  void _onSave() async {
    final birthday = _selectedDate;
    if (birthday != null) {
      final timestamp = Timestamp.fromDate(birthday);
      // Save the timestamp to Firestore
      await FirebaseFirestore.instance
          .collection('Users')
          .doc('user_id')
          .set({'birthday': timestamp}, SetOptions(merge: true));
    }
  }

  Future<void> _showDatePicker() async {
    final currentDate = _selectedDate ?? DateTime.now();
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (selectedDate != null) {
      setState(() {
        _selectedDate = selectedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateText = _selectedDate != null
        ? '${_selectedDate?.day}/${_selectedDate?.month}/${_selectedDate?.year}'
        : 'Select Birthday';
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
                  FEText.onBoardingHead('Create Account'),
                  verticalSpaceLarge,
                  verticalSpaceLarge,
                  verticalSpaceLarge,
                  verticalSpaceLarge,
                  FEInputField(
                    controller: _email,
                    placeholder: 'Email',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
                      } else if (!validateEmail(value)) {
                        return 'Please enter a valid email address';
                      } else {
                        return null;
                      }
                    },
                  ),
                  FEInputField(
                    textCapitalization: TextCapitalization.sentences,
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
                  FEInputField(
                    textCapitalization: TextCapitalization.sentences,
                    controller: _firstName,
                    placeholder: 'First Name',
                  ),
                  FEInputField(
                    textCapitalization: TextCapitalization.sentences,
                    controller: _lastName,
                    placeholder: 'Last Name',
                    keyboardType: TextInputType.name,
                  ),
                  FEInputField(
                    controller: _username,
                    placeholder: 'Username',
                    keyboardType: TextInputType.name,
                  ),
                  FEInputField(
                    controller: _street,
                    placeholder: 'Street',
                    textCapitalization: TextCapitalization.sentences,
                  ),
                  FEInputField(
                    controller: _city,
                    placeholder: 'City',
                    textCapitalization: TextCapitalization.sentences,
                  ),
                  FEInputField(
                    controller: _province,
                    placeholder: 'Province',
                    textCapitalization: TextCapitalization.sentences,
                  ),
                  FEInputField(
                    controller: _zipcode,
                    placeholder: 'Zipcode',
                    keyboardType: TextInputType.number,
                  ),
                  FEInputField(
                    controller: _contactNum,
                    placeholder: 'Contact Number (11 Digits)',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      } else if (value.length != 11) {
                        return 'Phone number must be exactly 11 digits long';
                      } else if (!validateInteger(value)) {
                        return 'Phone number must contain only digits';
                      }
                      return null;
                    },
                  ),
                  FEInputField(
                    onTap: _showDatePicker,
                    controller: TextEditingController(text: dateText),
                    validator: (value) {
                      if (_selectedDate == null) {
                        return 'Please select a date';
                      }
                      return null;
                    },
                    isReadOnly: true,
                  ),
                  verticalSpaceLarge,
                  FEButton(
                    title: 'Sign Up',
                    onTap: () async {
                      final isValid = _formKey.currentState?.validate();

                      try {
                        await _auth.createUserWithEmailAndPassword(
                          email: _email.text,
                          password: _password.text,
                        );
                        _registerUser();
                        _onSave();
                        if (context.mounted) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return FEAlertBox(
                                message: 'User Registered Succesfully!',
                                onTap: () => Navigator.pushNamedAndRemoveUntil(
                                    context, Onboarding.id, (route) => false),
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
