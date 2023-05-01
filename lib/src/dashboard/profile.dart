import 'package:ferry_easy/shared/services/image_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

import '../../shared/shared_exports.dart';
import '../../shared/widgets/ferry_easy_id_container.dart';
import '../authentication/domain/user_model.dart';

class Profile extends StatelessWidget {
  static const id = 'profile';

  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return StreamBuilder<UserModel?>(
        stream: getUser(auth.currentUser!.uid),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final user = snapshot.data!;
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
                            title: 'Contact Number',
                            info: user.contactNum,
                          ),
                          UserInfo(
                            title: 'Birth Date',
                            info:
                                DateFormat('MM-dd-yyyy').format(user.birthDate),
                          ),
                          UserInfo(
                            title: 'Username',
                            info: user.username,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => ImageService.updateId(context),
                      child: Flexible(
                        child: IdContainer(
                          uid: auth.currentUser!.uid,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: kcPrimaryColor,
              ),
            );
          }
        });
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
