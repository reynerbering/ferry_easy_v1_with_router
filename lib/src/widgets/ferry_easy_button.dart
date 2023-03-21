import 'package:ferry_easy/src/shared/app_colors.dart';
import 'package:ferry_easy/src/shared/styles.dart';
import 'package:flutter/material.dart';

export 'package:flutter/material.dart';
export 'ferry_easy_button.dart';

class FerryEasyButton extends StatelessWidget {
  final String title;
  final bool disabled;
  final bool outline;
  final void Function()? onTap;
  const FerryEasyButton({
    super.key,
    required this.title,
    this.disabled = false,
    this.outline = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        decoration: !outline
            ? BoxDecoration(
                color: !disabled ? kcPrimaryColor : kcMediumGrayColor,
                borderRadius: BorderRadius.circular(15),
              )
            : BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: kcPrimaryColor,
                  width: 1,
                ),
              ),
        child: Text(
          title,
          style: bodyStyle.copyWith(
            fontWeight: FontWeight.bold,
            color: !outline ? Colors.white : kcPrimaryColor,
          ),
        ),
      ),
    );
  }
}