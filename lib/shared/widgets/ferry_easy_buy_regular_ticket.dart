import '../styles/app_colors.dart';
import '../styles/ui_helpers.dart';
import 'ferry_easy_text.dart';

class FEBuyRegularTicket extends StatelessWidget {
  const FEBuyRegularTicket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return CustomPaint(
            size: Size(displayWidth(context),
                (displayWidth(context) * 0.62).toDouble()),
            painter: RPSCustomPainter(),
            child: SizedBox(
              width: double.infinity,
              height: 300,
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
                  const FEText.walletTicketCompany('MetroFerry Inc.'),
                  verticalSpaceSmall,
                  const FEText.walletTicketSubtext(
                      '(Outside CPA-Gate 6) Cebu Baseport Muelle, Osmena Wharf'),
                  const FEText.walletTicketSubtext(
                      '(Poblacion 6015 Lapu-Lapu City (Opon) Cebu Philippines'),
                  const FEText.walletTicketSubtext(
                      '(VAT REG. TIN: 004-271-832-00000'),
                  verticalSpaceSmall,
                  const FEText.walletTicketTitle('REGULAR'),
                  const SizedBox(
                    width: 300,
                    child: Divider(),
                  ),
                  verticalSpaceRegular,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          FEText.buyTicketPriceText('Fare'),
                          FEText.buyTicketPriceText('12% VAT'),
                        ],
                      ),
                      horizontalSpaceRegular,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          FEText.buyTicketPriceText('P'),
                          FEText.buyTicketPriceText('P'),
                        ],
                      ),
                      horizontalSpaceRegular,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
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
                    children: const [
                      horizontalSpaceLarge,
                      horizontalSpaceLarge,
                      FEText.buyTicketPriceText('P'),
                      horizontalSpaceMedium,
                      FEText.buyTicketPriceText('32.00'),
                    ],
                  )
                ],
              ),
            ),
          );
        }),
      ),
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
