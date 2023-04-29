import 'package:ferry_easy/shared/widgets/scan_to_use_special.dart';

import '../shared_exports.dart';

class FEUseSpecialTicket extends StatelessWidget {
  const FEUseSpecialTicket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xffEFCBDE),
          ),
          margin: const EdgeInsets.only(
            top: 25,
            left: 25,
            right: 25,
          ),
          height: 150,
          width: double.infinity,
          child: Column(
            children: [
              verticalSpaceMedium,
              FEText.useTitleHeader('PASSENGER\'S TICKET'),
              verticalSpaceTiny,
              FEText.useTitleHeader('(SPECIAL)'),
              verticalSpaceRegular,
              FEText.userSubText('LAPU-LAPU - CEBU'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints raints) {
              return CustomPaint(
                size: Size(displayWidth(context),
                    (displayWidth(context) * 0.62).toDouble()),
                painter: RPSCustomPainter(),
                child: SizedBox(
                  width: double.infinity,
                  height: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      verticalSpaceRegular,
                      verticalSpaceTiny,
                      verticalSpaceTiny,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/ferryeasy-logo-03.png',
                            height: 25,
                            width: 25,
                          ),
                          const Text(
                            'FerryEasy',
                            style: TextStyle(
                              color: kcPrimaryColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      verticalSpaceSmall,
                      FEText.walletTicketCompany('MetroFerry Inc.'),
                      verticalSpaceSmall,
                      FEText.walletTicketSubtext(
                          '(Outside CPA-Gate 6) Cebu Baseport Muelle, Osmena Wharf'),
                      FEText.walletTicketSubtext(
                          '(Poblacion 6015 Lapu-Lapu City (Opon) Cebu Philippines'),
                      FEText.walletTicketSubtext(
                          '(VAT REG. TIN: 004-271-832-00000'),
                      verticalSpaceSmall,
                      FEText.walletTicketTitle('SPECIAL'),
                      verticalSpaceRegular,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              FEText.buyTicketPriceText('Fare'),
                              FEText.buyTicketPriceText('12% VAT'),
                            ],
                          ),
                          horizontalSpaceRegular,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FEText.buyTicketPriceText('P'),
                              FEText.buyTicketPriceText('P'),
                            ],
                          ),
                          horizontalSpaceRegular,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              FEText.buyTicketPriceText('29.00'),
                              FEText.buyTicketPriceText('3.00'),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 250,
                        child: Divider(
                          color: Colors.black,
                          thickness: 5,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          horizontalSpaceLarge,
                          horizontalSpaceLarge,
                          FEText.buyTicketPriceText('P'),
                          horizontalSpaceMedium,
                          FEText.buyTicketPriceText('32.00'),
                        ],
                      ),
                      const SizedBox(
                        width: 300,
                        child: Divider(),
                      ),
                      verticalSpaceSmall,
                      // Gesture Detector when scanning

                      const ScanToUseSpecialTicket(),
                      verticalSpaceSmall,
                      FEText.buyTicketPriceText('Scan to use Ticket'),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
