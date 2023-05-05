import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ferry_easy/shared/shared_exports.dart';
import 'package:ferry_easy/src/dashboard/application/bloc_exports.dart';
import 'package:intl/intl.dart';

class NotificationList extends StatefulWidget {
  NotificationList({Key? key}) : super(key: key);

  @override
  State<NotificationList> createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  final Stream<QuerySnapshot> _stream = FirebaseFirestore.instance
      .collection('Announcements')
      .orderBy('dateCreated', descending: true)
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        return StreamBuilder<QuerySnapshot>(
          stream: _stream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
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
                int length = snapshot.data!.docs.length;
                if (length != state.currentCounter) {
                  state.currentCounter = length;
                  context.read<NotificationBloc>().add(const GetNotification());
                  print(snapshot.data!.docs.length);
                }
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
                    final data = snapshot.data!.docs[index].data()
                        as Map<String, dynamic>;
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
      },
    );
  }
}
