import 'package:ferry_easy/src/shared/app_colors.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_button.dart';
import 'dart:ui';

class FEAlertBox extends StatelessWidget {
  final String message;
  final String content;
  final void Function()? onTap;

  const FEAlertBox({
    super.key,
    required this.message,
    this.content = '',
    this.onTap,
  });

  // ! Need refactoring

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        title: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: kcPrimaryColor,
          ),
        ),
        // content: Text(
        //   content,
        //   textAlign: TextAlign.center,
        //   style: const TextStyle(
        //     color: kcPrimaryColor,
        //   ),
        // ),
        actions: [
          TextButton(
            onPressed: onTap,
            child: const FEButton(title: 'OK'),
          ),
        ],
      ),
    );
  }
}
