import 'package:ferry_easy/src/dashboard/consume_regular_ticket.dart';

import '../../shared/shared_exports.dart';
import '../../shared/widgets/ferry_easy_special_ticket.dart';
import '../../shared/widgets/ferry_easy_regular_ticket.dart';
import 'application/bloc_exports.dart';
import 'consume_special_ticket.dart';
import 'domain/ticket_model.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  void initState() {
    context.read<TicketBloc>().add(GetAllTickets());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        child: BlocBuilder<TicketBloc, TicketState>(
          builder: (context, state) {
            List<TicketModel> activeRegularTickets = state.activeRegularTickets;
            List<TicketModel> activeSpecialTickets = state.activeSpecialTickets;
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
                                              .pushNamed(
                                                  ConsumeRegularTicket.id),
                                        );
                                      },
                                    ),
                                  )
                                : const SizedBox.shrink(),
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
                            : const SizedBox.shrink(),
                        verticalSpaceLarge,
                        verticalSpaceLarge,
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
                      child: FEText.transacSubTitle(
                          'Transactions as of 2022-23-09'),
                    ),
                    ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FEText.transacTileText('Online Payment'),
                              FEText.transacTileText('-32.00'),
                            ],
                          ),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FEText.transacTileText('Online Payment'),
                              FEText.transacTileText('Details'),
                            ],
                          ),
                        ),
                        ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FEText.transacTileText('Online Payment'),
                              FEText.transacTileText('-32.00'),
                            ],
                          ),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FEText.transacTileText('Online Payment'),
                              FEText.transacTileText('Details'),
                            ],
                          ),
                        ),
                        ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FEText.transacTileText('Online Payment'),
                              FEText.transacTileText('-32.00'),
                            ],
                          ),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
      ),
    );
  }
}
