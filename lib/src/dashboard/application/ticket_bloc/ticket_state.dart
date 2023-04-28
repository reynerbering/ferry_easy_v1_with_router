part of 'ticket_bloc.dart';

class TicketState extends Equatable {
  final List<TicketModel> activeRegularTickets;
  final List<TicketModel> activeSpecialTickets;
  final List<TicketModel> usedRegularTickets;
  final List<TicketModel> usedSpecialTickets;

  const TicketState({
    this.activeRegularTickets = const <TicketModel>[],
    this.activeSpecialTickets = const <TicketModel>[],
    this.usedRegularTickets = const <TicketModel>[],
    this.usedSpecialTickets = const <TicketModel>[],
  });

  @override
  List<Object> get props => [
        activeRegularTickets,
        activeSpecialTickets,
        usedRegularTickets,
        usedSpecialTickets,
      ];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      activeRegularTickets: List<TicketModel>.from(
          map['activeRegularTickets']?.map((x) => TicketModel.fromMap(x))),
      activeSpecialTickets: List<TicketModel>.from(
          map['activeSpecialTickets']?.map((x) => TicketModel.fromMap(x))),
      usedRegularTickets: List<TicketModel>.from(
          map['usedRegularTickets']?.map((x) => TicketModel.fromMap(x))),
      usedSpecialTickets: List<TicketModel>.from(
          map['usedSpecialTickets']?.map((x) => TicketModel.fromMap(x))),
    );
  }
}
