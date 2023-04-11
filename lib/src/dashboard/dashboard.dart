import 'package:ferry_easy/source/shared/app_colors.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_dashboard_divider.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_text.dart';
import 'package:ferry_easy/src/dashboard/history.dart';
import 'package:ferry_easy/src/dashboard/settings.dart';
import 'package:ferry_easy/src/dashboard/wallet.dart';
import 'package:flutter_svg/svg.dart';

import '../../source/widgets/ferry_easy_app_bar.dart';
import 'home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  static const id = 'dashboard';

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<Map<String, dynamic>> _pageDetails = [
    {'pageName': const Home(), 'title': 'FerryEasy'},
    {'pageName': const Wallet(), 'title': 'My Wallet'},
    {'pageName': const Wallet(), 'title': 'My Wallety'},
    {'pageName': const History(), 'title': 'Ticket History'},
    {'pageName': const Notifications(), 'title': 'Notifications'},
  ];

  int _selectedPageIndex = 0;

  void _onItemTapped(index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: FEAppBar(title: _pageDetails[_selectedPageIndex]['title'])),
      body: _pageDetails[_selectedPageIndex]['pageName'],
      // ! IMPLEMENT DRAWER UI
      endDrawer: const Drawer(),
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
              label: 'Settings',
            ),
          ],
        ),
      ),
      floatingActionButton: const FECustomFAB(),
    );
  }
}
