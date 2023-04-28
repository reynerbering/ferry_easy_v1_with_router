import 'package:ferry_easy/shared/widgets/ferry_easy_use_special_ticket.dart';

import '../../shared/shared_exports.dart';

class ConsumeSpecialTicket extends StatelessWidget {
  static const id = 'consume_regular_ticket';

  ConsumeSpecialTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return FEBackgroundWidget(
      assetImage: AssetImage('assets/images/login.png'),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: FEAppBar(title: 'Passenger Ticket')),
        body: Column(
          children: [
            verticalSpaceRegular,
            FEUseSpecialTicket(),
          ],
        ),
      ),
    );
  }
}
