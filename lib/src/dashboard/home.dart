import 'package:ferry_easy/source/shared/ui_helpers.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_app_bar.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_greeting_banner.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_ship_details.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_text.dart';

class Home extends StatelessWidget {
  final PreferredSizeWidget appBar;
  const Home({super.key, required this.appBar});

  @override
  Widget build(BuildContext context) {
    return FEBackgroundWidget(
      opacity: 0.1,
      assetImage: const AssetImage('assets/images/ferryboat.jpg'),
      bgChild: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: FEAppBar(
            title: 'FerryEasy',
            logo: 'assets/images/ferryeasy-logo-03.png',
          ),
        ),
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
                  FEText.dashTextTitle('Active Ferries'),
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
