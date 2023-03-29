import 'package:ferry_easy/src/shared/app_colors.dart';
import 'package:ferry_easy/src/shared/ui_helpers.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_dashboard_divider.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_greeting_banner.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_ship_details.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_text.dart';
import 'package:flutter_svg/svg.dart';

import '../../src/widgets/ferry_easy_app_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FEBackgroundWidget(
      opacity: 0.5,
      assetImage: const AssetImage('assets/images/ferryboat.jpg'),
      bgChild: Scaffold(
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
                      shipName: 'Tommy 2',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            currentIndex: _selectedIndex,
            selectedItemColor: kcPrimaryColor,
            onTap: _onItemTapped,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home-outline.svg',
                  height: 25,
                  width: 25,
                  fit: BoxFit.scaleDown,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/wallet-filled.svg',
                  height: 25,
                  width: 25,
                  fit: BoxFit.scaleDown,
                ),
                label: 'Wallet',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.add, color: Colors.transparent),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/history.svg',
                  height: 25,
                  width: 25,
                  fit: BoxFit.scaleDown,
                ),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/notifications-outline.svg',
                  height: 25,
                  width: 25,
                  fit: BoxFit.scaleDown,
                ),
                label: 'Settings',
              ),
            ],
          ),
        ),
        floatingActionButton: const FECustomFAB(),
      ),
    );
  }
}
