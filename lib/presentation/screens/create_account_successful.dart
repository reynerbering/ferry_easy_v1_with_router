import 'package:ferry_easy/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAccSuccessfulScreen extends StatelessWidget {
  const CreateAccSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // ! Background image holder + transparent color on scaffold to show the bg image
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/create-account.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SvgPicture.asset(
                        'assets/icons/check.svg',
                        height: 72,
                        width: 52,
                        color: ferryPrimaryColor,
                      ),
                    ),
                    const Text(
                      'Account Created \nSuccesfully',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ferryPrimaryColor,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
