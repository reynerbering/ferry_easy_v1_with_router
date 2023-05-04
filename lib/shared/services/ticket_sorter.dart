import '../../src/dashboard/domain/ticket_model.dart';

class TicketUtils {
  static List<TicketModel> sortTicketsDescendingByDate(
      List<TicketModel> tickets) {
    List<TicketModel> sortedTickets = List<TicketModel>.from(tickets);
    sortedTickets.sort((a, b) => b.datePurchased.compareTo(a.datePurchased));
    return sortedTickets;
  }
}
