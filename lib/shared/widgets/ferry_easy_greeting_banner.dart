import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../src/authentication/domain/user_model.dart';
import '../shared_exports.dart';

class FEGreetingBanner extends StatelessWidget {
  const FEGreetingBanner({
    super.key,
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
              decoration: const BoxDecoration(
                color: kcPrimaryColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              height: 65,
              width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FEText.dashTextTitle('Good Day, ${user.firstName} !'),
                  horizontalSpaceTiny,
                  SvgPicture.asset(
                    'assets/icons/sun.svg',
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            );
            // Display the user information here
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
