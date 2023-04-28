import 'package:cloud_firestore/cloud_firestore.dart';

import '../../src/dashboard/domain/ticket_model.dart';

class TicketService {
  // Buy Ticket
  static Future<void> buy({TicketModel? ticket, required String uid}) async {
    try {
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(uid)
          .collection('Tickets')
          .doc(ticket!.id)
          .set(ticket.toMap());
    } catch (e) {
      throw Exception(e.toString());
    }
  }
  // Get All Ticket

  static Future<List<TicketModel>> get({required String uid}) async {
    List<TicketModel> ticketList = [];
    try {
      final data = await FirebaseFirestore.instance
          .collection('Users')
          .doc(uid)
          .collection('Tickets')
          .get();

      for (var ticket in data.docs) {
        ticketList.add(TicketModel.fromMap(ticket.data()));
      }
      return ticketList;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  // Use Ticket

  static Future<void> use({TicketModel? ticket, required String uid}) async {
    try {
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(uid)
          .collection('Tickets')
          .doc(ticket!.id)
          .update(ticket.toMap());
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
