import '../../shared/shared_exports.dart';

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
              width: double.infinity,
              height: 200,
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
                shrinkWrap: true,
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
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
