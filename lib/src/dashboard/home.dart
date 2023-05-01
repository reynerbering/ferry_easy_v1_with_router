import '../../shared/shared_exports.dart';

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
              const FEGreetingBanner(),
              verticalSpaceMedium,
              Row(
                children: [
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
                      minutes: 24,
                    ),
                    FEDivider(),
                    FEShipDetails(
                      shipName: 'Carmen Uno',
                      minutes: 18,
                    ),
                    FEDivider(),
                    FEShipDetails(
                      shipName: 'Tommy 1',
                      minutes: 30,
                    ),
                    FEDivider(),
                    FEShipDetails(
                      shipName: 'Tommy 2',
                      minutes: 90,
                    ),
                    FEDivider(),
                    FEShipDetails(
                      shipName: 'Megg',
                      minutes: 15,
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
