part of 'ticket_bloc.dart';

abstract class TicketEvent extends Equatable {
  const TicketEvent();

  @override
  List<Object> get props => [];
}

class BuyRegularTicket extends TicketEvent {
  final TicketModel ticket;

  const BuyRegularTicket({required this.ticket});

  @override
  List<Object> get props => [ticket];
}

class BuySpecialTicket extends TicketEvent {
  final TicketModel ticket;

  const BuySpecialTicket({required this.ticket});

  @override
  List<Object> get props => [ticket];
}

class GetAllTickets extends TicketEvent {}

class UseRegularTicket extends TicketEvent {
  final TicketModel ticket;

  const UseRegularTicket({required this.ticket});

  @override
  List<Object> get props => [ticket];
}

class UseSpecialTicket extends TicketEvent {
  final TicketModel ticket;

  const UseSpecialTicket({required this.ticket});

  @override
  List<Object> get props => [ticket];
}
