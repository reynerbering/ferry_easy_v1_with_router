import 'package:ferry_easy/shared/styles/app_colors.dart';
import 'package:flutter/material.dart';

class FEAppBar extends StatelessWidget {
  final String title;
  final Widget? leading;
  final Widget? trailing;
  final AssetImage? image;
  final void Function()? onTap;
  final TabBar? tabBar;
  final bool? isDisabled;

  const FEAppBar({
    super.key,
    required this.title,
    this.leading,
    this.trailing,
    this.image,
    this.onTap,
    this.tabBar,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      bottom: tabBar,
      iconTheme: const IconThemeData(color: kcPrimaryColor),
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(color: kcPrimaryColor),
      ),
    );
  }
}
