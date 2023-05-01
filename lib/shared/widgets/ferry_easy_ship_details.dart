import 'package:flutter_svg/flutter_svg.dart';

import '../shared_exports.dart';
import 'fake_timer.dart';

class FEShipDetails extends StatelessWidget {
  final String shipName;
  final int minutes;

  const FEShipDetails({
    super.key,
    required this.shipName,
    required this.minutes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              FEText.dashFerryName(
                'MV $shipName',
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/arrival.svg',
                height: 40,
                width: 40,
              ),
              horizontalSpaceSmall,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FEText.dashEta('To: Cebu City'),
                  verticalSpaceSmall,
                  FEText.dashEta('From: Lapu-lapu City'),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: kcLightGrayColor,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: FakeCountdownTimer(
                        minutes: minutes,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FEDivider extends StatelessWidget {
  const FEDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: kcPrimaryColor,
      height: 15,
    );
  }
}
