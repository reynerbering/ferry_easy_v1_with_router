import 'package:ferry_easy/shared/widgets/ferry_easy_notification_list.dart';

import '../../shared/shared_exports.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            NotificationList(),
          ],
        ),
      ),
    );
  }
}
