import '../../src/dashboard/wallet.dart';
import '../shared/app_colors.dart';
import '../shared/ui_helpers.dart';
import 'ferry_easy_text.dart';

class SpecialTicketWidget extends StatelessWidget {
  final void Function()? onTap;
  final Color? color;
  final String? title;

  const SpecialTicketWidget({
    super.key,
    this.onTap,
    this.color,
    this.title,
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
                    Container(
                      alignment: Alignment.center,
                      color: Colors.yellowAccent,
                      width: double.infinity,
                      padding: const EdgeInsets.all(25),
                      child: const FEText.walletTicketTitle('REGULAR'),
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
                    const FEText.walletTicketCompany('MetroFerry Inc.'),
                    verticalSpaceSmall,
                    const FEText.walletTicketSubtext(
                        '(Outside CPA-Gate 6) Cebu Baseport Muelle, Osmena Wharf'),
                    const FEText.walletTicketSubtext(
                        '(Poblacion 6015 Lapu-Lapu City (Opon) Cebu Philippines'),
                    const FEText.walletTicketSubtext(
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
                        const FEText.walletTicketPriceText('P 32.00'),
                        horizontalSpaceLarge,
                        horizontalSpaceLarge,
                        horizontalSpaceLarge,
                        Row(
                          children: const [
                            FEText.walletTicketQuantity('Quantity'),
                          ],
                        ),
                        horizontalSpaceSmall,
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: kcLightGrayColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            '1',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: kcPrimaryColor,
                            ),
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
