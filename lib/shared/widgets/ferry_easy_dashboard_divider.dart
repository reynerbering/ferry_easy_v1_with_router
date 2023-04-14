import 'package:ferry_easy/shared/styles/app_colors.dart';
import 'package:ferry_easy/shared/styles/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        child: SvgPicture.asset(
          'assets/icons/ticket-outline.svg',
          height: displayWidth(context) * 0.12,
          width: displayWidth(context) * 0.12,
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
      ),
    );
  }
}
