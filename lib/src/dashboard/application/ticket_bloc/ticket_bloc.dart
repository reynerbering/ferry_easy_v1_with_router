import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl/intl.dart';

import '../../domain/ticket.dart';

part 'ticket_event.dart';
part 'ticket_state.dart';

class TicketBloc extends HydratedBloc<TicketEvent, TicketState> {
  TicketBloc() : super(TicketState()) {
    on<BuyRegularTicket>(_onBuyRegularTicket);
    on<BuySpecialTicket>(_onBuySpecialTicket);
    on<UseRegularTicket>(_onUseRegularTicket);
    on<UseSpecialTicket>(_onUseSpecialTicket);
  }

  void _onBuyRegularTicket(BuyRegularTicket event, Emitter<TicketState> emit) {
    final state = this.state;
    emit(
      TicketState(
        walletBalance: state.walletBalance - state.regularTicketPrice,
        activeRegularTickets: List.from(state.activeRegularTickets)
          ..add(event.ticket),
        activeSpecialTickets: state.activeSpecialTickets,
        usedRegularTickets: state.usedRegularTickets,
        usedSpecialTickets: state.usedSpecialTickets,
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
        usedRegularTickets: state.usedRegularTickets,
        usedSpecialTickets: state.usedSpecialTickets,
      ),
    );
  }

  void _onUseRegularTicket(UseRegularTicket event, Emitter<TicketState> emit) {
    final state = this.state;

    emit(
      TicketState(
        walletBalance: state.walletBalance,
        activeRegularTickets: List.from(state.activeRegularTickets)
          ..remove(event.ticket),
        activeSpecialTickets: state.activeSpecialTickets,
        usedRegularTickets: List.from(state.usedRegularTickets)
          ..add(
            event.ticket.copyWith(
              isUsed: true,
              dateUsed: DateFormat('MM-dd-yyyy').format(
                DateTime.now(),
              ),
            ),
          ),
        usedSpecialTickets: state.usedSpecialTickets,
      ),
    );
  }

  void _onUseSpecialTicket(UseSpecialTicket event, Emitter<TicketState> emit) {
    final state = this.state;

    emit(
      TicketState(
        walletBalance: state.walletBalance,
        activeRegularTickets: state.activeRegularTickets,
        activeSpecialTickets: List.from(state.activeSpecialTickets)
          ..remove(event.ticket),
        usedRegularTickets: state.usedRegularTickets,
        usedSpecialTickets: List.from(state.usedSpecialTickets)
          ..add(
            event.ticket.copyWith(
              isUsed: true,
              dateUsed: DateFormat('MM-dd-yyyy').format(
                DateTime.now(),
              ),
            ),
          ),
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
