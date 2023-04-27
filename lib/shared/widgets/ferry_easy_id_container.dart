// ignore_for_file: sort_child_properties_last

import 'package:cached_network_image/cached_network_image.dart';

import '../../src/authentication/domain/user_model.dart';
import '../shared_exports.dart';

class IdContainer extends StatelessWidget {
  final String uid;
  const IdContainer({
    required this.uid,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UserModel?>(
        stream: UserModel.fromUidStream(uid: uid),
        builder: (context, AsyncSnapshot<UserModel?> snap) {
          if (snap.error != null || !snap.hasData) {
            return tempProfile(context);
          } else {
            if (snap.data!.validId.isEmpty) {
              return tempProfile(context);
            } else if (snap.connectionState == ConnectionState.waiting) {
              return tempProfile(context);
            } else {
              return Container(
                margin: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Valid ID:',
                      style: TextStyle(
                          color: kcPrimaryColor,
                          fontFamily: 'Inter',
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    verticalSpaceRegular,
                    CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: snap.data!.validId,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(
                        color: kcPrimaryColor,
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ],
                ),
              );
            }
          }
        });
  }

  Widget tempProfile(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(25),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey, //New
            blurRadius: 25.0,
          ),
        ],
      ),
      child: Column(
        children: const [
          verticalSpaceLarge,
          Text(
            'UPLOAD A VALID ID TO ENJOY DISCOUNTS!',
            style: TextStyle(
                color: kcPrimaryColor,
                fontFamily: 'Inter',
                fontSize: 13,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          verticalSpaceLarge,
          Icon(Icons.photo),
          verticalSpaceLarge,
        ],
      ),
    );
  }
}
