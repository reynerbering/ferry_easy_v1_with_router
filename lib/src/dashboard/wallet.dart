import 'package:ferry_easy/shared/styles/app_colors.dart';
import 'package:ferry_easy/shared/styles/ui_helpers.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_confirmation_box.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_text.dart';
import 'package:ferry_easy/src/dashboard/use_ticket.dart';

import '../../shared/widgets/ferry_easy_background_image.dart';
import '../../shared/widgets/ferry_easy_special_ticket.dart';
import '../../shared/widgets/ferry_easy_regular_ticket.dart';
import '../../shared/widgets/ferry_easy_wallet_load.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: TabBarView(
        children: [
          FEBackgroundWidget(
            assetImage: const AssetImage('assets/images/login.png'),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  verticalSpaceRegular,
                  FEWalletLoad(),
                  RegularTicket(
                    onTap: () => showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return FEConfirmationBox(
                          message: 'Use Ticket?',
                          yesTap: () =>
                              Navigator.of(context).pushNamed(UseTicket.id),
                        );
                      },
                    ),
                  ),
                  SpecialTicket(
                    onTap: () => showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return FEConfirmationBox(
                          message: 'Use Ticket?',
                          yesTap: () =>
                              Navigator.of(context).pushNamed(UseTicket.id),
                        );
                      },
                    ),
                  ),
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
                child: FEText.transacSubTitle('Transactions as of 2022-23-09'),
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
      ),
    );
  }
}
