import 'package:ferry_easy/shared/widgets/scan_to_use_regular.dart';

import '../shared_exports.dart';

class FEUseRegularTicket extends StatelessWidget {
  const FEUseRegularTicket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xffEAE7A9),
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
              FEText.useTitleHeader('(REGULAR)'),
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
                      FEText.walletTicketTitle('REGULAR'),
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
                              FEText.buyTicketPriceText('32.00'),
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
                          FEText.buyTicketPriceText('35.00'),
                        ],
                      ),
                      const SizedBox(
                        width: 300,
                        child: Divider(),
                      ),
                      verticalSpaceSmall,
                      // Gesture Detector when scanning

                      const ScanToUseRegularTicket(),
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

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height * 0.4332333);
    path0.quadraticBezierTo(size.width * 0.0661000, size.height * 0.4335000,
        size.width * 0.0666667, size.height * 0.5000000);
    path0.quadraticBezierTo(size.width * 0.0668667, size.height * 0.5681000, 0,
        size.height * 0.5671333);
    path0.lineTo(0, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width, size.height * 0.5665333);
    path0.quadraticBezierTo(size.width * 0.9332000, size.height * 0.5662333,
        size.width * 0.9333333, size.height * 0.5000000);
    path0.quadraticBezierTo(size.width * 0.9340000, size.height * 0.4345333,
        size.width, size.height * 0.4333333);
    path0.lineTo(size.width, 0);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
