// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../shared/shared_exports.dart';
import 'package:ferry_easy/src/dashboard/buy_ticket.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ferry_easy/src/dashboard/history.dart';
import 'package:ferry_easy/src/dashboard/notifications.dart';
import 'package:ferry_easy/src/dashboard/wallet.dart';

import 'home.dart';

class Dashboard extends StatefulWidget {
  int selectedIndex = 0;
  Dashboard({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  static const id = 'dashboard';

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<Map<String, dynamic>> _pageDetails = [
    {'pageName': const Home(), 'title': 'FerryEasy'},
    {'pageName': const Wallet(), 'title': 'My Wallet'},
    {'pageName': const Placeholder(), 'title': ''},
    {'pageName': const History(), 'title': 'Ticket History'},
    {'pageName': const Notifications(), 'title': 'Notifications'},
  ];

  int _selectedPageIndex = 0;

  void _onItemTapped(index) {
    setState(() {
      widget.selectedIndex = index;
      _selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    _onItemTapped(widget.selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: PreferredSize(
          preferredSize: _selectedPageIndex == 1
              ? const Size.fromHeight(100)
              : const Size.fromHeight(kToolbarHeight),
          child: FEAppBar(
            title: _pageDetails[_selectedPageIndex]['title'],
            tabBar: _selectedPageIndex == 1
                ? const TabBar(
                    indicatorWeight: 5,
                    indicatorColor: kcLightGrayColor,
                    tabs: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: FEText.walletHeaderTitle('Wallet'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: FEText.walletHeaderTitle('Transactions'),
                      ),
                    ],
                  )
                : null,
          ),
        ),
        body: _pageDetails[_selectedPageIndex]['pageName'],
        endDrawer: const FEDrawer(),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            currentIndex: _selectedPageIndex,
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
                  colorFilter: _selectedPageIndex == 0
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
                  colorFilter: _selectedPageIndex == 1
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
                  colorFilter: _selectedPageIndex == 3
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
                  colorFilter: _selectedPageIndex == 4
                      ? const ColorFilter.mode(kcPrimaryColor, BlendMode.srcIn)
                      : null,
                ),
                label: 'Notifs',
              ),
            ],
          ),
        ),
        floatingActionButton: FECustomFAB(
          onTap: () => Navigator.pushNamed(context, BuyTicket.id),
        ),
      ),
    );
  }
}
