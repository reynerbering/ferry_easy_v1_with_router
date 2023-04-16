import 'dart:ui';

import '../shared_exports.dart';

class FENotificationDialog extends StatelessWidget {
  final String title;
  final String subText;

  const FENotificationDialog({
    super.key,
    required this.title,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: kcPrimaryColor,
                    size: 25,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: kcPrimaryColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text(
                  subText,
                  style: const TextStyle(
                    height: 1.2,
                    color: kcPrimaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
