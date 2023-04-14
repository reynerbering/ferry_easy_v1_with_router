import '../shared/app_colors.dart';
import '../shared/ui_helpers.dart';
import 'ferry_easy_notification_dialog.dart';
import 'ferry_easy_text.dart';

class FENotificationTile extends StatelessWidget {
  final String title;
  final String subText;
  const FENotificationTile({
    super.key,
    required this.title,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (BuildContext context) {
          return FENotificationDialog(
            title: title,
            subText: subText,
          );
        },
      ),
      child: Container(
        width: displayWidth(context),
        height: 190,
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: kcPrimaryColor,
                  radius: 5,
                ),
                horizontalSpaceRegular,
                FEText.notifHeader(title),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: FEText.notifSubtext(
                subText,
                maxLines: 6,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
