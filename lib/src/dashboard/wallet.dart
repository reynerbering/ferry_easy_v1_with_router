import 'package:ferry_easy/source/shared/app_colors.dart';
import 'package:ferry_easy/source/shared/styles.dart';
import 'package:ferry_easy/source/shared/ui_helpers.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_confirmation_box.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_text.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_used_special_ticket.dart';

import '../../source/widgets/ferry_easy_background_image.dart';
import '../../source/widgets/ferry_easy_special_ticket.dart';
import '../../source/widgets/ferry_easy_regular_ticket.dart';
import '../../source/widgets/ferry_easy_wallet_load.dart';
import 'load_details.dart';

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
            bgChild: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  verticalSpaceRegular,
                  WalletLoad(
                    onTap: () =>
                        Navigator.of(context).pushNamed(LoadDetails.id),
                  ),
                  RegularTicket(
                    onTap: () => showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const FEConfirmationBox(message: 'Use Ticket?');
                      },
                    ),
                  ),
                  SpecialTicket(
                    onTap: () => showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const FEConfirmationBox(message: 'Use Ticket?');
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
