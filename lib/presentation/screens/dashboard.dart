import 'package:ferry_easy/src/shared/app_colors.dart';
import 'package:ferry_easy/src/shared/ui_helpers.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_greeting_banner.dart';
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
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: FEAppBar(
            title: 'FerryEasy',
            logo: 'assets/images/ferryeasy-logo-03.png',
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceMedium,
            const FEGreetingBanner(name: 'Suzy'),
            verticalSpaceMedium,
            const FEText.dashTextTitle('Active Ferries'),
            verticalSpaceMedium,
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ShipNameWidget(
                    shipName: 'MV Carmen Uno',
                  ),
                  DestinationWidget(
                    firstLocation: 'From: Cebu City',
                    secondLocation: 'To: Lapu-lapu City',
                    countdownTimer: '0:30:29',
                  ),
                  EtaWidget(
                    estTimeArrival: '10:45:00',
                  ),
                  Divider(
                    color: kcPrimaryColor,
                    height: 50,
                  ),
                  ShipNameWidget(
                    shipName: 'MV Princesa',
                  ),
                  DestinationWidget(
                    firstLocation: 'From: Lapu-lapu City',
                    secondLocation: 'To: Cebu City',
                    countdownTimer: '0:45:21',
                  ),
                  EtaWidget(
                    estTimeArrival: '10:50:00',
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
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
                'assets/icons/wallet-outline.svg',
                height: 25,
                width: 25,
                fit: BoxFit.scaleDown,
              ),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/ticket-outline.svg',
                height: 25,
                width: 25,
                fit: BoxFit.scaleDown,
              ),
              label: 'Buy Ticket',
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
          currentIndex: _selectedIndex,
          selectedItemColor: kcPrimaryColor,
          onTap: _onItemTapped,
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(15.0),
          child: FloatingActionButton(
            backgroundColor: kcPrimaryColor,
            splashColor: Colors.white,
            tooltip: 'My Wallet',
            onPressed: () {},
            child: const Icon(Icons.wallet),
          ),
        ),
      ),
    );
  }
}

// ! Ship Name Title widget
// todo: parse name to actual name e.g. {$shipName}
class ShipNameWidget extends StatelessWidget {
  final String shipName;
  const ShipNameWidget({
    Key? key,
    required this.shipName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          shipName,
          style: const TextStyle(
            color: kcPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

// ! Destination Title widget
// todo: parse countdown timer to actual timer name e.g. {$countdownTimer}
class DestinationWidget extends StatelessWidget {
  final String firstLocation;
  final String secondLocation;
  final String countdownTimer;

  const DestinationWidget({
    Key? key,
    required this.firstLocation,
    required this.secondLocation,
    required this.countdownTimer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/arrival.svg',
          height: 40,
          width: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 3.0, left: 3.0),
              child: Text(
                firstLocation,
                style: const TextStyle(color: kcPrimaryColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0, left: 3.0),
              child: Text(
                secondLocation,
                style: const TextStyle(color: kcPrimaryColor),
              ),
            ),
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  countdownTimer,
                  style: const TextStyle(
                    color: kcPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ! Estimated time of arrival widget
// todo: parse time to actual estTimeOfArrival e.g. {$estTimeArrival}

class EtaWidget extends StatelessWidget {
  final String estTimeArrival;
  const EtaWidget({
    Key? key,
    required this.estTimeArrival,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Est. Arrival Time: ',
            style: TextStyle(
              color: kcPrimaryColor,
              fontFamily: 'Montserrat',
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: '$estTimeArrival AM',
            style: const TextStyle(
              color: kcPrimaryColor,
              fontFamily: 'Montserrat',
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
