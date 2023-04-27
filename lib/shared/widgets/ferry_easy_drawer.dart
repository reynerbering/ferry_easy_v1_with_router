import 'dart:ui';

import 'package:ferry_easy/src/authentication/presentation/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_storage/get_storage.dart';

import '../../src/authentication/domain/user_model.dart';
import '../../src/dashboard/application/bloc_exports.dart';
import '../../src/dashboard/dashboard.dart';
import '../../src/dashboard/profile.dart';
import '../shared_exports.dart';
import 'ferry_easy_avatar.dart';

class FEDrawer extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FEDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return StreamBuilder<UserModel?>(
        stream: getUser(auth.currentUser!.uid),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final user = snapshot.data!;
            return BlocBuilder<TicketBloc, TicketState>(
              builder: (context, state) {
                return Drawer(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5.0,
                      sigmaY: 5.0,
                    ),
                    child: FEBackgroundWidget(
                      assetImage:
                          const AssetImage('assets/images/splash-bg-image.png'),
                      child: ListView(
                        children: [
                          SizedBox(
                            height: 250,
                            child: DrawerHeader(
                                child: Column(
                              children: [
                                AvatarImage(
                                  uid: auth.currentUser!.uid,
                                ),
                                verticalSpaceRegular,
                                Text(
                                  user.firstName,
                                  style: profileLNHeader,
                                ),
                                Text(
                                  user.lastName,
                                  style: profileFNHeader,
                                ),
                              ],
                            )),
                          ),
                          ListTile(
                            onTap: () =>
                                Navigator.popAndPushNamed(context, Profile.id),
                            title: const FEText.drawerListTile(
                              'Profile ',
                              textAlign: TextAlign.end,
                            ),
                            trailing: SvgPicture.asset(
                              'assets/icons/profile.svg',
                              colorFilter: const ColorFilter.mode(
                                  kcPrimaryColor, BlendMode.srcIn),
                              height: 15,
                              width: 15,
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Dashboard(selectedIndex: 0)),
                              );
                            },
                            title: const FEText.drawerListTile(
                              'Home',
                              textAlign: TextAlign.end,
                            ),
                            trailing: SvgPicture.asset(
                              'assets/icons/home-filled.svg',
                              colorFilter: const ColorFilter.mode(
                                  kcPrimaryColor, BlendMode.srcIn),
                              height: 15,
                              width: 15,
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Dashboard(selectedIndex: 1)),
                              );
                            },
                            title: const FEText.drawerListTile(
                              'Wallet',
                              textAlign: TextAlign.end,
                            ),
                            trailing: SvgPicture.asset(
                              'assets/icons/wallet-outline.svg',
                              colorFilter: const ColorFilter.mode(
                                  kcPrimaryColor, BlendMode.srcIn),
                              height: 15,
                              width: 15,
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Dashboard(selectedIndex: 3)),
                              );
                            },
                            title: const FEText.drawerListTile(
                              'History',
                              textAlign: TextAlign.end,
                            ),
                            trailing: SvgPicture.asset(
                              'assets/icons/history.svg',
                              colorFilter: const ColorFilter.mode(
                                  kcPrimaryColor, BlendMode.srcIn),
                              height: 15,
                              width: 15,
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Dashboard(selectedIndex: 4)),
                              );
                            },
                            title: const FEText.drawerListTile(
                              'Notifications',
                              textAlign: TextAlign.end,
                            ),
                            trailing: SvgPicture.asset(
                              'assets/icons/notifications-filled.svg',
                              colorFilter: const ColorFilter.mode(
                                  kcPrimaryColor, BlendMode.srcIn),
                              height: 15,
                              width: 15,
                            ),
                          ),
                          const Divider(),
                          verticalSpaceMedium,
                          ListTile(
                            title: const FEText.drawerListTile(
                              'Logout',
                              textAlign: TextAlign.end,
                            ),
                            onTap: () async {
                              await _auth.signOut().then(
                                (value) {
                                  GetStorage().remove('token');
                                  Navigator.pushReplacementNamed(
                                    context,
                                    WelcomeScreen.id,
                                  );
                                },
                              );
                            },
                            trailing: const Icon(
                              Icons.logout,
                              color: kcPrimaryColor,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return const Center(
                child: CircularProgressIndicator(
              color: kcPrimaryColor,
            ));
          }
        });
  }
}
