import 'package:ferry_easy/src/dashboard/consume_regular_ticket.dart';

import '../../shared/shared_exports.dart';
import '../../shared/widgets/ferry_easy_special_ticket.dart';
import '../../shared/widgets/ferry_easy_regular_ticket.dart';
import 'application/bloc_exports.dart';
import 'consume_special_ticket.dart';
import 'domain/ticket.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<TicketBloc, TicketState>(
        builder: (context, state) {
          List<Ticket> activeRegularTickets = state.activeRegularTickets;
          List<Ticket> activeSpecialTickets = state.activeSpecialTickets;
          return TabBarView(
            children: [
              FEBackgroundWidget(
                assetImage: const AssetImage('assets/images/login.png'),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      verticalSpaceRegular,
                      const FEWalletLoad(),
                      activeRegularTickets.isEmpty &&
                              activeSpecialTickets.isEmpty
                          ? Container(
                              margin: const EdgeInsets.all(25),
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: kcMediumGrayColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Text(
                                'YOU HAVE NO AVAILABLE TICKETS',
                                style: TextStyle(
                                    color: kcLightGrayColor,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          : activeRegularTickets.isNotEmpty
                              ? RegularTicket(
                                  onTap: () => showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return FEConfirmationBox(
                                        message: 'Use Ticket?',
                                        yesTap: () => Navigator.of(context)
                                            .pushNamed(ConsumeRegularTicket.id),
                                      );
                                    },
                                  ),
                                )
                              : Container(),
                      activeSpecialTickets.isNotEmpty
                          ? SpecialTicket(
                              onTap: () => showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return FEConfirmationBox(
                                    message: 'Use Ticket?',
                                    yesTap: () => Navigator.of(context)
                                        .pushNamed(ConsumeSpecialTicket.id),
                                  );
                                },
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    width: double.infinity,
                    color: kcVeryLightGrayColor,
                    child:
                        FEText.transacSubTitle('Transactions as of 2022-23-09'),
                  ),
                  ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            FEText.transacTileText('Online Payment'),
                            FEText.transacTileText('-32.00'),
                          ],
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            FEText.transacTileText('Online Payment'),
                            FEText.transacTileText('Details'),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            FEText.transacTileText('Online Payment'),
                            FEText.transacTileText('-32.00'),
                          ],
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            FEText.transacTileText('Online Payment'),
                            FEText.transacTileText('Details'),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            FEText.transacTileText('Online Payment'),
                            FEText.transacTileText('-32.00'),
                          ],
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            FEText.transacTileText('Online Payment'),
                            FEText.transacTileText('Details'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
