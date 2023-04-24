import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String uid;
  final String firstName;
  final String lastName;
  final String email;
  final String username;
  final String profileImg;
  final String contactNum;
  final Map<String, dynamic> address;
  final DateTime birthDate;
  final int wallet;
  final bool isVerified;
  final String validId;

  UserModel({
    required this.uid,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.username,
    required this.address,
    required this.birthDate,
    required this.wallet,
    required this.isVerified,
    required this.contactNum,
    required this.profileImg,
    required this.validId,
  });

  // Convert User object to Map
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'username': username,
      'address': address,
      'birthDate': Timestamp.fromDate(birthDate),
      'wallet': wallet,
      'contactNum': contactNum,
      'isVerified': isVerified,
      'profileImg': profileImg,
      'validId': validId,
    };
  }

  // Create User object from Map
  factory UserModel.fromMap(
      Map<String, dynamic> map, DocumentReference reference) {
    return UserModel(
      uid: map['uid'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      email: map['email'],
      username: map['username'],
      address: map['address'],
      birthDate: (map['birthDate'] as Timestamp).toDate(),
      wallet: map['wallet'],
      isVerified: map['isVerified'],
      profileImg: map['profileImg'],
      contactNum: map['contactNum'],
      validId: map['validId'],
    );
  }
}

Future<void> addUser(UserModel user) async {
  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('Users');
  await usersCollection.doc(user.uid.toString()).set(user.toMap());
}

// Future<UserModel?> getUser(String userId) async {
//   final CollectionReference usersCollection =
//       FirebaseFirestore.instance.collection('Users');
//   final DocumentSnapshot userDoc =
//       await usersCollection.doc(userId.toString()).get();
//   if (userDoc.exists) {
//     final Map<String, dynamic> userData =
//         userDoc.data() as Map<String, dynamic>;
//     return UserModel.fromMap(userData, userDoc.reference);
//   }
//   return null;
// }

Stream<UserModel?> getUser(String userId) {
  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('Users');
  final DocumentReference userDocRef = usersCollection.doc(userId);

  return userDocRef.snapshots().map((docSnapshot) {
    if (docSnapshot.exists) {
      final Map<String, dynamic> userData =
          docSnapshot.data() as Map<String, dynamic>;
      return UserModel.fromMap(userData, userDocRef);
    } else {
      return null;
    }
  });
}
