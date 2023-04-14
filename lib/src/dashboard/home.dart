import 'package:ferry_easy/shared/styles/ui_helpers.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_greeting_banner.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_ship_details.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_text.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FEBackgroundWidget(
      assetImage: const AssetImage('assets/images/dashboard.png'),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceMedium,
              const FEGreetingBanner(name: 'Suzy'),
              verticalSpaceMedium,
              Row(
                children: const [
                  horizontalSpaceRegular,
                  FEText.dashActiveFerries('Active Ferries'),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: const [
                    FEShipDetails(
                      shipName: 'Princesa',
                    ),
                    FEDivider(),
                    FEShipDetails(
                      shipName: 'Carmen Uno',
                    ),
                    FEDivider(),
                    FEShipDetails(
                      shipName: 'Tommy 1',
                    ),
                    FEDivider(),
                    FEShipDetails(
                      shipName: 'Tommy 1',
                    ),
                    FEDivider(),
                    FEShipDetails(
                      shipName: 'Tommy 1',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
