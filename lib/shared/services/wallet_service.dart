import 'package:cloud_firestore/cloud_firestore.dart';

class WalletService {
  // Buy Ticket
  static Future<void> buyRegularTicket({required String uid}) async {
    const int regTicketPrice = 35;
    try {
      final userData = FirebaseFirestore.instance.collection('Users').doc(uid);
      await userData.update({'wallet': FieldValue.increment(-regTicketPrice)});
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<void> buySpecialTicket({required String uid}) async {
    const int specialTicketPrice = 29;
    try {
      final userData = FirebaseFirestore.instance.collection('Users').doc(uid);
      await userData
          .update({'wallet': FieldValue.increment(-specialTicketPrice)});
    } catch (e) {
      throw Exception(e.toString());
    }
  }
  // Get All Ticket

  // Use Ticket
}
