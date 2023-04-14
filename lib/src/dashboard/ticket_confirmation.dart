import 'package:ferry_easy/source/shared/ui_helpers.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_alert_box.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_app_bar.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_button.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_text.dart';
import 'package:ferry_easy/src/dashboard/dashboard.dart';

class TicketConfirmationPage extends StatelessWidget {
  static const id = 'ticket_confirmation_page';
  const TicketConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: FEAppBar(title: 'Select Ticket'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/ferryeasy-logo-03.png',
                  height: 50,
                  width: 50,
                ),
                const FEText.buyTicketCompany('Ferry Easy'),
              ],
            ),
            Row(
              children: [
                const FEText.buyTicketTitle('Transaction Number'),
                horizontalSpaceRegular,
                const FEText.buyTicketTitle('ABSCISINFINFJN'),
              ],
            ),
            verticalSpaceLarge,
            const FEText.buyTicketTitle('YOU ARE ABOUT TO PAY'),
            verticalSpaceLarge,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const FEText.buyTicketTitle('(3) Ticket - Regular '),
                horizontalSpaceRegular,
                const FEText.buyTicketTitle('PHP 32.00'),
              ],
            ),
            verticalSpaceLarge,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const FEText.buyTicketTitle('Total Amount'),
                horizontalSpaceRegular,
                const FEText.buyTicketTitle('PHP 96.00'),
              ],
            ),
            verticalSpaceLarge,
            Divider(
              color: Colors.black,
              thickness: 2,
            ),
            verticalSpaceRegular,
            const FEText.buyTicketTitle('PAYMENT'),
            verticalSpaceRegular,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const FEText.buyTicketTitle('Ferry Easy Wallet'),
                horizontalSpaceRegular,
                const FEText.buyTicketTitle('PHP 96.00'),
              ],
            ),
            verticalSpaceRegular,
            const FEText.buyTicketTitle('September 29, 2022'),
            verticalSpaceLarge,
            verticalSpaceLarge,
            FEButton(
              title: 'Proceed',
              onTap: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return FEAlertBox(
                      message: 'Thank you for your purchase!',
                      onTap: () => Navigator.popUntil(
                        context,
                        ModalRoute.withName('home'),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
