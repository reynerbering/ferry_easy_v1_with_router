import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ferry_easy/shared/shared_exports.dart';
import 'package:intl/intl.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('Announcements')
          .orderBy('dateCreated', descending: true)
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return const Center(
              child: CircularProgressIndicator(
                color: kcPrimaryColor,
              ),
            );
          default:
            return ListView.separated(
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                height: 1,
                color: Colors.black,
                thickness: 1,
              ),
              controller: ScrollController(),
              shrinkWrap: true,
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final data =
                    snapshot.data!.docs[index].data() as Map<String, dynamic>;
                final dateCreated = data['dateCreated'] as Timestamp;
                final formattedDate =
                    DateFormat('MM-dd-yyyy').format(dateCreated.toDate());
                return FENotificationTile(
                  title: data['title'],
                  subText: data['message'],
                  dateCreated: formattedDate,
                );
              },
            );
        }
      },
    );
  }
}
