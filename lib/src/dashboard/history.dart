import 'package:ferry_easy/shared/styles/app_colors.dart';
import 'package:ferry_easy/shared/styles/ui_helpers.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_text.dart';

import '../../shared/widgets/ferry_easy_used_regular_ticket.dart';
import '../../shared/widgets/ferry_easy_used_special_ticket.dart';

class History extends StatelessWidget {
  const History({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceMedium,
            Container(
                padding: const EdgeInsets.all(15.0),
                width: double.infinity,
                color: kcVeryLightGrayColor,
                child: FEText.transacSubTitle('Tickets Used in 2022-23-09')),

            // ! TODO refactor for dynamic widget
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                UsedSpecialTicket(),
                UsedRegularTicket(),
                UsedSpecialTicket(),
                UsedRegularTicket(),
                UsedSpecialTicket(),
                UsedRegularTicket(),
                UsedRegularTicket(),
                UsedRegularTicket(),
                UsedRegularTicket(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
