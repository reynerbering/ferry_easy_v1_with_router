import 'package:equatable/equatable.dart';
import 'package:ferry_easy/shared/services/ticket_service.dart';
import 'package:ferry_easy/shared/services/wallet_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl/intl.dart';

import '../../domain/ticket_model.dart';

part 'ticket_event.dart';
part 'ticket_state.dart';

class TicketBloc extends Bloc<TicketEvent, TicketState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TicketBloc() : super(const TicketState()) {
    on<BuyRegularTicket>(_onBuyRegularTicket);
    on<BuySpecialTicket>(_onBuySpecialTicket);
    on<GetAllTickets>(_onGetAllTickets);
    on<UseRegularTicket>(_onUseRegularTicket);
    on<UseSpecialTicket>(_onUseSpecialTicket);
  }

  void _onBuyRegularTicket(
      BuyRegularTicket event, Emitter<TicketState> emit) async {
    await TicketService.buy(ticket: event.ticket, uid: _auth.currentUser!.uid);
    await WalletService.buyRegularTicket(uid: _auth.currentUser!.uid);
  }

  void _onBuySpecialTicket(
      BuySpecialTicket event, Emitter<TicketState> emit) async {
    await TicketService.buy(ticket: event.ticket, uid: _auth.currentUser!.uid);
    await WalletService.buySpecialTicket(uid: _auth.currentUser!.uid);
  }

  void _onGetAllTickets(GetAllTickets event, Emitter<TicketState> emit) async {
    List<TicketModel> activeRegularTickets = [];
    List<TicketModel> activeSpecialTickets = [];
    List<TicketModel> usedRegularTickets = [];
    List<TicketModel> usedSpecialTickets = [];

    await TicketService.get(uid: _auth.currentUser!.uid).then((value) {
      for (var ticket in value) {
        switch (ticket.ticketType.toString()) {
          case 'Regular':
            if (ticket.isUsed == false) {
              activeRegularTickets.add(ticket);
            } else {
              usedRegularTickets.add(ticket);
            }
            break;
          case 'Special':
            if (ticket.isUsed == false) {
              activeSpecialTickets.add(ticket);
            } else {
              usedSpecialTickets.add(ticket);
            }
            break;
        }
      }
    });

    emit(TicketState(
      activeRegularTickets: activeRegularTickets,
      activeSpecialTickets: activeSpecialTickets,
      usedRegularTickets: usedRegularTickets,
      usedSpecialTickets: usedSpecialTickets,
    ));
  }

  void _onUseRegularTicket(
      UseRegularTicket event, Emitter<TicketState> emit) async {
    TicketModel ticket = event.ticket.copyWith(
        isUsed: true,
        dateUsed: DateFormat('MM-dd-yyyy').format(DateTime.now()));
    await TicketService.use(uid: _auth.currentUser!.uid, ticket: ticket);
  }

  void _onUseSpecialTicket(
      UseSpecialTicket event, Emitter<TicketState> emit) async {
    TicketModel ticket = event.ticket.copyWith(
        isUsed: true,
        dateUsed: DateFormat('MM-dd-yyyy').format(DateTime.now()));
    await TicketService.use(uid: _auth.currentUser!.uid, ticket: ticket);
  }
}
