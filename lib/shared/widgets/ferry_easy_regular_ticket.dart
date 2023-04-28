import '../../src/dashboard/application/bloc_exports.dart';
import '../shared_exports.dart';

class RegularTicket extends StatelessWidget {
  final void Function()? onTap;

  const RegularTicket({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
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
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: const Color(0xffEAE7A9),
                      width: double.infinity,
                      padding: const EdgeInsets.all(25),
                      child: FEText.walletTicketTitle('REGULAR'),
                    ),
                    verticalSpaceSmall,
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
                    verticalSpaceSmall,
                    const SizedBox(
                      width: 300,
                      child: Divider(),
                    ),
                    verticalSpaceLarge,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FEText.walletTicketPriceText('P 35.00'),
                        horizontalSpaceLarge,
                        horizontalSpaceLarge,
                        horizontalSpaceLarge,
                        Row(
                          children: [
                            FEText.walletTicketQuantity('Quantity'),
                          ],
                        ),
                        horizontalSpaceSmall,
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: kcLightGrayColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: BlocBuilder<TicketBloc, TicketState>(
                            builder: (context, state) {
                              return Text(
                                '${state.activeRegularTickets.length}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: kcPrimaryColor,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
        ),
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
    path0.lineTo(0, size.height * 0.5424865);
    path0.quadraticBezierTo(size.width * 0.0673667, size.height * 0.5410811,
        size.width * 0.0669333, size.height * 0.6477838);
    path0.quadraticBezierTo(size.width * 0.0673667, size.height * 0.7588108, 0,
        size.height * 0.7571892);
    path0.lineTo(0, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width, size.height * 0.7563243);
    path0.quadraticBezierTo(size.width * 0.9322333, size.height * 0.7574054,
        size.width * 0.9319000, size.height * 0.6480000);
    path0.quadraticBezierTo(size.width * 0.9317667, size.height * 0.5422703,
        size.width, size.height * 0.5405405);
    path0.lineTo(size.width, 0);
    path0.lineTo(0, 0);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
