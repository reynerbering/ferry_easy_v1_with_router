import 'package:ferry_easy/source/shared/ui_helpers.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_text.dart';

import '../../source/widgets/ferry_easy_background_image.dart';
import '../../source/widgets/ferry_easy_regular_ticket.dart';
import '../../source/widgets/ferry_easy_special_ticket.dart';
import '../../source/widgets/ferry_easy_wallet_load.dart';

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
                  WalletLoad(),
                  RegularTicketWidget(),
                  SpecialTicketWidget(),
                ],
              ),
            ),
          ),
          ListView(),
        ],
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
