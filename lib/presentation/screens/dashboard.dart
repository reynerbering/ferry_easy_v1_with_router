import 'package:ferry_easy/presentation/screens/history.dart';
import 'package:ferry_easy/presentation/screens/settings.dart';
import 'package:ferry_easy/presentation/screens/wallet.dart';
import 'package:ferry_easy/source/shared/app_colors.dart';
import 'package:ferry_easy/source/shared/ui_helpers.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_dashboard_divider.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_greeting_banner.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_ship_details.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_text.dart';
import 'package:flutter_svg/svg.dart';

import '../../source/widgets/ferry_easy_app_bar.dart';
import 'home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  final screens = [
    Home(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: FEAppBar(
          title: 'Ticket History',
        ),
      ),
    ),
    Wallet(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: FEAppBar(
          title: 'Ticket History',
        ),
      ),
    ),
    Wallet(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: FEAppBar(
          title: 'Ticket History',
        ),
      ),
    ),
    History(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: FEAppBar(
          title: 'Ticket History',
        ),
      ),
    ),
    Settings(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: FEAppBar(
          title: 'Ticket History',
        ),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            currentIndex: _selectedIndex,
            selectedItemColor: kcPrimaryColor,
            onTap: _onItemTapped,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: 'Home',
                icon: SvgPicture.asset(
                  'assets/icons/home-outline.svg',
                  height: 25,
                  width: 25,
                  fit: BoxFit.scaleDown,
                  colorFilter: _selectedIndex == 0
                      ? const ColorFilter.mode(kcPrimaryColor, BlendMode.srcIn)
                      : null,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Wallet',
                icon: SvgPicture.asset(
                  'assets/icons/wallet-filled.svg',
                  height: 25,
                  width: 25,
                  fit: BoxFit.scaleDown,
                  colorFilter: _selectedIndex == 1
                      ? const ColorFilter.mode(kcPrimaryColor, BlendMode.srcIn)
                      : null,
                ),
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
                  colorFilter: _selectedIndex == 3
                      ? const ColorFilter.mode(kcPrimaryColor, BlendMode.srcIn)
                      : null,
                ),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/notifications-outline.svg',
                  height: 25,
                  width: 25,
                  fit: BoxFit.scaleDown,
                  colorFilter: _selectedIndex == 4
                      ? const ColorFilter.mode(kcPrimaryColor, BlendMode.srcIn)
                      : null,
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
