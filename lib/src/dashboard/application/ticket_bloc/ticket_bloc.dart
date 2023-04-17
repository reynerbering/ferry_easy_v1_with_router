import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../domain/ticket.dart';

part 'ticket_event.dart';
part 'ticket_state.dart';

class TicketBloc extends HydratedBloc<TicketEvent, TicketState> {
  TicketBloc() : super(TicketState()) {
    on<BuyRegularTicket>(_onBuyRegularTicket);
    on<BuySpecialTicket>(_onBuySpecialTicket);
  }

  void _onBuyRegularTicket(BuyRegularTicket event, Emitter<TicketState> emit) {
    final state = this.state;
    emit(
      TicketState(
        walletBalance: state.walletBalance - state.regularTicketPrice,
        activeRegularTickets: List.from(state.activeRegularTickets)
          ..add(event.ticket),
        activeSpecialTickets: state.activeSpecialTickets,
      ),
    );
  }

  void _onBuySpecialTicket(BuySpecialTicket event, Emitter<TicketState> emit) {
    final state = this.state;

    emit(
      TicketState(
        walletBalance: state.walletBalance - state.specialTicketPrice,
        activeRegularTickets: state.activeRegularTickets,
        activeSpecialTickets: List.from(state.activeSpecialTickets)
          ..add(event.ticket),
      ),
    );
  }

  @override
  TicketState? fromJson(Map<String, dynamic> json) {
    return TicketState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(TicketState state) {
    return state.toMap();
  }
}
