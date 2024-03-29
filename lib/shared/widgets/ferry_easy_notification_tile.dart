import '../../src/dashboard/application/bloc_exports.dart';
import '../shared_exports.dart';

class FENotificationTile extends StatelessWidget {
  final String title;
  final String subText;
  final String dateCreated;
  const FENotificationTile({
    super.key,
    required this.title,
    required this.subText,
    required this.dateCreated,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            context.read<NotificationBloc>().add(const ReadNotification());
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return FENotificationDialog(
                  title: title,
                  subText: subText,
                  dateCreated: dateCreated,
                );
              },
            );
          },
          child: Container(
            padding: const EdgeInsets.all(25),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
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
                      SizedBox(
                        width: displayWidth(context) * 0.62,
                        child: FEText.notifHeader(
                          title,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  verticalSpaceTiny,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FEText.notifHeader(
                        dateCreated,
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  verticalSpaceTiny,
                  FEText.notifSubtext(
                    subText,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
