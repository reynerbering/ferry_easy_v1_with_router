import 'package:ferry_easy/source/shared/app_colors.dart';
import 'package:ferry_easy/source/shared/ui_helpers.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_app_bar.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_text.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_use_ticket.dart';

class UseTicket extends StatelessWidget {
  static const id = 'use_ticket';

  const UseTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return FEBackgroundWidget(
      assetImage: const AssetImage('assets/images/login.png'),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: FEAppBar(title: 'Passenger Ticket')),
        body: Column(
          children: [
            verticalSpaceRegular,
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
                children: const [
                  verticalSpaceMedium,
                  FEText.useTitleHeader('PASSENGER\'S TICKET'),
                  verticalSpaceTiny,
                  FEText.useTitleHeader('(REGULAR)'),
                  verticalSpaceRegular,
                  FEText.userSubText('LAPU-LAPU - CEBU'),
                ],
              ),
            ),
            FEUseTicket(),
          ],
        ),
      ),
    );
  }
}
