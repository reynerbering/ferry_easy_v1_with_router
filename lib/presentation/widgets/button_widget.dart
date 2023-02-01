import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.buttonTitle,
    required this.buttonBackgroundColor,
    required this.buttonForegroundColor,
    required this.buttonSideColor,
    required this.onPressed,
  }) : super(key: key);

  final Color buttonBackgroundColor;
  final Color buttonForegroundColor;
  final Color buttonSideColor;
  final String buttonTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor:
                buttonBackgroundColor, // Background button color for elevated button
            foregroundColor:
                buttonForegroundColor, // Foreground button color for elevated button
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: buttonSideColor),
              borderRadius: BorderRadius.circular(15),
            )),
        child: Text(
          buttonTitle,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
