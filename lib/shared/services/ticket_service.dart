import 'package:cloud_firestore/cloud_firestore.dart';

import '../../src/dashboard/domain/ticket_model.dart';


class TicketService {
  // Buy Ticket
  static Future<void> create({Ticket? ticket, required String uid}) async {
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

  static Future<List<Ticket>> get({required String uid}) async {
    List<Ticket> ticketList = [];
    try {
      final data = await FirebaseFirestore.instance
          .collection('Users')
          .doc(uid)
          .collection('Tickets')
          .get();

      for (var ticket in data.docs) {
        ticketList.add(Ticket.fromMap(ticket.data()));
      }
      return ticketList;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  // Use Ticket
}
