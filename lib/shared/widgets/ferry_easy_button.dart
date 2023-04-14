import 'package:ferry_easy/shared/styles/app_colors.dart';
import 'package:ferry_easy/shared/styles/styles.dart';
import 'package:flutter/material.dart';

export 'package:flutter/material.dart';
export 'ferry_easy_button.dart';

class FEButton extends StatelessWidget {
  final String title;
  final bool disabled;
  final bool outline;
  final void Function()? onTap;
  const FEButton({
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
        alignment: Alignment.center,
        constraints: const BoxConstraints(
          minWidth: 50.0,
          maxWidth: double.infinity,
          minHeight: 25.0,
          maxHeight: 50.0,
        ),
        decoration: !outline
            ? BoxDecoration(
                color: !disabled ? kcPrimaryColor : kcMediumGrayColor,
                borderRadius: BorderRadius.circular(15),
              )
            : BoxDecoration(
                color: Colors.white,
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
