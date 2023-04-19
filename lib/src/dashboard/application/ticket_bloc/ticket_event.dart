part of 'ticket_bloc.dart';

abstract class TicketEvent extends Equatable {
  const TicketEvent();

  @override
  List<Object> get props => [];
}

class BuyRegularTicket extends TicketEvent {
  final Ticket ticket;

  const BuyRegularTicket({required this.ticket});

  @override
  List<Object> get props => [ticket];
}

class BuySpecialTicket extends TicketEvent {
  final Ticket ticket;

  const BuySpecialTicket({required this.ticket});

  @override
  List<Object> get props => [ticket];
}

class UseRegularTicket extends TicketEvent {
  final Ticket ticket;

  const UseRegularTicket({required this.ticket});

  @override
  List<Object> get props => [ticket];
}

class UseSpecialTicket extends TicketEvent {
  final Ticket ticket;

  const UseSpecialTicket({required this.ticket});

  @override
  List<Object> get props => [ticket];
}
