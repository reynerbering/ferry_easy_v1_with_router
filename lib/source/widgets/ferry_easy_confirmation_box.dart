import 'package:ferry_easy/source/shared/app_colors.dart';
import 'package:ferry_easy/source/shared/ui_helpers.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_button.dart';
import 'dart:ui';

class FEConfirmationBox extends StatelessWidget {
  final String message;
  final void Function()? yesTap;
  final void Function()? noTap;

  const FEConfirmationBox({
    super.key,
    required this.message,
    this.yesTap,
    this.noTap,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RawMaterialButton(
                      fillColor: Colors.white,
                      elevation: 10,
                      onPressed: noTap,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text(
                        'NO',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: kcPrimaryColor,
                        ),
                      ),
                    ),
                    horizontalSpaceMedium,
                    RawMaterialButton(
                      fillColor: Colors.white,
                      elevation: 10,
                      onPressed: yesTap,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text(
                        'YES',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: kcPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
