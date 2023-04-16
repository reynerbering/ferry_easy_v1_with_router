import 'package:ferry_easy/src/dashboard/ticket_confirmation.dart';

import '../../shared/shared_exports.dart';

class BuyTicket extends StatefulWidget {
  static const id = 'buy_ticket';
  final int? value;
  const BuyTicket({super.key, this.value});

  @override
  State<BuyTicket> createState() => _BuyTicketState();
}

class _BuyTicketState extends State<BuyTicket> {
  @override
  Widget build(BuildContext context) {
    return FEBackgroundWidget(
      assetImage: const AssetImage('assets/images/login.png'),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: FEAppBar(title: 'Select Ticket'),
        ),
        body: Column(children: [
          FEWalletLoad(),
          const FEBuyRegularTicket(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FEText.buyTicketQuantity('Quantity'),
                FEQuantitySelector(initialValue: 0, onChanged: (value) {})
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: FEButton(
              title: 'Buy Ticket',
              outline: true,
              onTap: () =>
                  Navigator.pushNamed(context, TicketConfirmationPage.id),
            ),
          ),
        ]),
      ),
    );
  }
}
