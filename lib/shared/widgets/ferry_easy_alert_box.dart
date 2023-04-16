import 'dart:ui';

import '../shared_exports.dart';

class FEAlertBox extends StatelessWidget {
  final String message;
  final void Function()? onTap;

  const FEAlertBox({
    super.key,
    required this.message,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: AspectRatio(
          aspectRatio: 5 / 3,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.bottomCenter,
                image: AssetImage("assets/images/dialog-wave.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  message,
                  style: const TextStyle(
                    color: kcPrimaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                verticalSpaceLarge,
                RawMaterialButton(
                  fillColor: Colors.white,
                  elevation: 10,
                  onPressed: onTap,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    'OK',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: kcPrimaryColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
