import 'package:ferry_easy/src/shared/app_colors.dart';
import 'package:ferry_easy/src/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class FECustomFAB extends StatelessWidget {
  final void Function()? onTap;

  const FECustomFAB({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: displayWidth(context) * 0.2,
      height: displayWidth(context) * 0.2,
      child: RawMaterialButton(
        fillColor: kcPrimaryColor,
        shape: const CircleBorder(),
        elevation: 0.0,
        onPressed: onTap,
        child: const SizedBox.expand(
          child: SizedBox(
            child: Icon(
              Icons.wallet,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
