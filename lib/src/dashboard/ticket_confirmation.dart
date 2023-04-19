import 'package:ferry_easy/shared/services/guid_gen.dart';
import 'package:ferry_easy/src/dashboard/application/bloc_exports.dart';
import 'package:ferry_easy/src/dashboard/domain/ticket.dart';
import 'package:intl/intl.dart';

import '../../shared/shared_exports.dart';

class TicketConfirmationPage extends StatelessWidget {
  static const id = 'ticket_confirmation_page';

  final TicketType ticketType;
  final String ticket;
  final int quantity;
  final int totalAmount;
  final int ticketPrice;

  const TicketConfirmationPage({
    super.key,
    required this.ticketType,
    required this.quantity,
    required this.totalAmount,
    required this.ticketPrice,
    required this.ticket,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
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
                // Row(
                //   children: const [
                //     FEText.buyTicketTitle('Transaction Number'),
                //     horizontalSpaceRegular,
                //     FEText.buyTicketTitle('ABSCISINFINFJN'),
                //   ],
                // ),
                verticalSpaceLarge,
                const FEText.buyTicketTitle('YOU ARE ABOUT TO PAY'),
                verticalSpaceLarge,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FEText.buyTicketTitle('$quantity Ticket - $ticket'),
                    horizontalSpaceRegular,
                    FEText.buyTicketTitle('PHP $ticketPrice'),
                  ],
                ),
                verticalSpaceLarge,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FEText.buyTicketTitle('Total Amount'),
                    horizontalSpaceRegular,
                    FEText.buyTicketTitle('PHP $totalAmount'),
                  ],
                ),
                verticalSpaceLarge,
                const Divider(
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
                    FEText.buyTicketTitle('PHP $totalAmount'),
                  ],
                ),
                verticalSpaceRegular,
                FEText.buyTicketTitle(DateTime.now().toString()),
                verticalSpaceLarge,
                verticalSpaceLarge,
                FEButton(
                  title: 'Proceed',
                  onTap: () {
                    // logic
                    // loops when creating a ticket
                    if (ticket == 'Regular') {
                      for (int i = 0; i < quantity; i++) {
                        var ticket = Ticket(
                            id: GUIDGen.generate(),
                            datePurchased: DateFormat('MM-dd-yyyy')
                                .format(DateTime.now()));
                        context
                            .read<TicketBloc>()
                            .add(BuyRegularTicket(ticket: ticket));
                      }
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return FEAlertBox(
                            message: 'Thank you for your purchase!',
                            onTap: () => Navigator.popUntil(
                              context,
                              ModalRoute.withName('home'),
                            ),
                          );
                        },
                      );
                    } else if (ticket == 'Special') {
                      for (int i = 0; i < quantity; i++) {
                        var ticket = Ticket(
                            id: GUIDGen.generate(),
                            datePurchased: DateFormat('MM-dd-yyyy')
                                .format(DateTime.now()));
                        context
                            .read<TicketBloc>()
                            .add(BuySpecialTicket(ticket: ticket));
                      }
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return FEAlertBox(
                            message: 'Thank you for your purchase!',
                            onTap: () => Navigator.popUntil(
                              context,
                              ModalRoute.withName('home'),
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
