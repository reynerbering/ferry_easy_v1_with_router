import 'package:ferry_easy/shared/widgets/ferry_easy_used_ticket_list.dart';

import '../../shared/shared_exports.dart';

class History extends StatelessWidget {
  const History({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(15.0),
            width: double.infinity,
            color: kcVeryLightGrayColor,
            child: FEText.transacSubTitle('Tickets Used:'),
          ),
          const Expanded(
            child: UsedTicketList(),
          ),
        ],
      ),
    );
  }
}
