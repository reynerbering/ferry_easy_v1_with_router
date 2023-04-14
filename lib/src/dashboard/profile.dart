import 'package:ferry_easy/shared/styles/app_colors.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_app_bar.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_text.dart';

import '../../shared/widgets/ferry_easy_profile_card.dart';

class Profile extends StatelessWidget {
  static const id = 'profile';

  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcLightGrayColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: FEAppBar(
          title: 'Profile',
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const ProfileCard(),
            Container(
              margin: const EdgeInsets.all(25),
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey, //New
                    blurRadius: 25.0,
                  ),
                ],
              ),
              child: ListView(
                children: [
                  UserInfo(
                    title: 'First Name',
                    info: 'Fabian',
                  ),
                  UserInfo(
                    title: 'First Name',
                    info: 'Fabian',
                  ),
                  UserInfo(
                    title: 'First Name',
                    info: 'Fabian',
                  ),
                  UserInfo(
                    title: 'First Name',
                    info: 'Fabian',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  final String title;
  final String info;

  const UserInfo({
    super.key,
    required this.title,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      leading: Text(
        title,
        style: const TextStyle(color: kcMediumGrayColor),
      ),
      trailing: Text(
        info,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
