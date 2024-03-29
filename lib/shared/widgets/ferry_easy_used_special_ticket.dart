import '../../src/dashboard/domain/ticket_model.dart';
import '../shared_exports.dart';

class UsedSpecialTicket extends StatelessWidget {
  final TicketModel ticket;

  const UsedSpecialTicket({
    super.key,
    required this.ticket,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints raints) {
          return CustomPaint(
            size: Size(displayWidth(context),
                (displayWidth(context) * 0.62).toDouble()),
            painter: RPSCustomPainter(),
            child: SizedBox(
              width: double.infinity,
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      horizontalSpaceSmall,
                      horizontalSpaceTiny,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            FEText.historyTicketType('STUDENT /'),
                            FEText.historyTicketType('PWD/'),
                            FEText.historyTicketType('SENIOR CITIZEN')
                          ],
                        ),
                      ),
                      horizontalSpaceSmall,
                      const SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          color: Colors.black,
                        ),
                      ),
                      horizontalSpaceMedium,
                      Column(
                        children: [
                          FEText.historyPassTicket('METRO FERRY INC.'),
                          verticalSpaceTiny,
                          FEText.historyTicketLoc('ID: ${ticket.id}'),
                          verticalSpaceTiny,
                          FEText.historyTicketPrice('${ticket.dateUsed}')
                        ],
                      ),
                    ],
                  ),
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
      ..color = kcLightGrayColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height);
    path0.lineTo(size.width * 0.2666667, size.height);
    path0.quadraticBezierTo(size.width * 0.2672333, size.height * 0.7940000,
        size.width * 0.3339000, size.height * 0.7934000);
    path0.quadraticBezierTo(size.width * 0.3986000, size.height * 0.7940000,
        size.width * 0.4000000, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width * 0.4009667, 0);
    path0.quadraticBezierTo(size.width * 0.4027000, size.height * 0.1966000,
        size.width * 0.3337667, size.height * 0.1998000);
    path0.quadraticBezierTo(size.width * 0.2654333, size.height * 0.1966000,
        size.width * 0.2666667, 0);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
