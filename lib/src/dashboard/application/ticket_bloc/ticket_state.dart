part of 'ticket_bloc.dart';

class TicketState extends Equatable {
  final int walletBalance;
  final int regularTicketPrice;
  final int specialTicketPrice;
  final List<Ticket> activeRegularTickets;
  final List<Ticket> activeSpecialTickets;
  final List<Ticket> usedRegularTickets;
  final List<Ticket> usedSpecialTickets;

  const TicketState({
    this.activeRegularTickets = const <Ticket>[],
    this.activeSpecialTickets = const <Ticket>[],
    this.usedRegularTickets = const <Ticket>[],
    this.usedSpecialTickets = const <Ticket>[],
    this.walletBalance = 28,
    this.regularTicketPrice = 35,
    this.specialTicketPrice = 28,
  });

  @override
  List<Object> get props => [
        activeRegularTickets,
        activeSpecialTickets,
        usedRegularTickets,
        usedSpecialTickets,
        walletBalance,
        regularTicketPrice,
        specialTicketPrice
      ];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'walletBalance': walletBalance,
      'regularTicketPrice': regularTicketPrice,
      'specialTicketPrice': specialTicketPrice,
      'activeRegularTickets':
          activeRegularTickets.map((x) => x.toMap()).toList(),
      'activeSpecialTickets':
          activeSpecialTickets.map((x) => x.toMap()).toList(),
      'usedRegularTickets': usedRegularTickets.map((x) => x.toMap()).toList(),
      'usedSpecialTickets': usedSpecialTickets.map((x) => x.toMap()).toList(),
    };
  }

  // ! When generating file, follow this format to be able to save hydrated bloc! This solved the issue of list model

  factory TicketState.fromMap(Map<String, dynamic> map) {
    return TicketState(
      walletBalance: map['walletBalance'] as int,
      regularTicketPrice: map['regularTicketPrice'] as int,
      specialTicketPrice: map['specialTicketPrice'] as int,
      activeRegularTickets: List<Ticket>.from(
          map['activeRegularTickets']?.map((x) => Ticket.fromMap(x))),
      activeSpecialTickets: List<Ticket>.from(
          map['activeSpecialTickets']?.map((x) => Ticket.fromMap(x))),
      usedRegularTickets: List<Ticket>.from(
          map['usedRegularTickets']?.map((x) => Ticket.fromMap(x))),
      usedSpecialTickets: List<Ticket>.from(
          map['usedSpecialTickets']?.map((x) => Ticket.fromMap(x))),
    );
  }
}
