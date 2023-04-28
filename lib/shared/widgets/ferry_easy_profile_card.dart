import 'package:ferry_easy/shared/services/image_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../src/authentication/domain/user_model.dart';
import '../shared_exports.dart';
import 'ferry_easy_avatar.dart';

class ProfileCard extends StatelessWidget {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phoneNumber;
  final String? address;

  const ProfileCard({
    super.key,
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.address,
  });

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;

    return StreamBuilder<UserModel?>(
      stream: getUser(auth.currentUser!.uid),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final user = snapshot.data!;

          return Container(
            margin: const EdgeInsets.all(25),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey, //New
                  blurRadius: 25.0,
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StreamBuilder<UserModel?>(
                    stream: getUser(auth.currentUser!.uid),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final user = snapshot.data!;

                        return SizedBox(
                          height: 75,
                          width: 75,
                          child: InkWell(
                            onTap: () =>
                                ImageService.updateProfileImage(context),
                            child: AvatarImage(uid: user.uid),
                          ),
                        );
                      } else {
                        return const CircularProgressIndicator(
                          backgroundColor: kcPrimaryColor,
                        );
                      }
                    }),
                verticalSpaceRegular,
                FEText.userLNHeader(user.lastName),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FEText.userFNHeader(user.firstName),
                    horizontalSpaceTiny,
                    user.isVerified
                        ? const Icon(
                            Icons.verified,
                            color: kcPrimaryColor,
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
                verticalSpaceRegular,
                const Divider(),
                UserDetails(
                  icon: Icons.email,
                  text: user.email,
                ),
                UserDetails(
                  icon: Icons.phone,
                  text: user.contactNum,
                ),
                UserDetails(
                  icon: Icons.location_on,
                  text: user.address['city'],
                ),
                verticalSpaceSmall,
              ],
            ),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return const CircularProgressIndicator(
            backgroundColor: kcPrimaryColor,
          );
        }
      },
    );
  }
}

class UserDetails extends StatelessWidget {
  final IconData icon;
  final String text;

  const UserDetails({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: kcPrimaryColor,
        ),
        horizontalSpaceTiny,
        FEText.userSubText(
          text,
        ),
      ],
    );
  }
}
