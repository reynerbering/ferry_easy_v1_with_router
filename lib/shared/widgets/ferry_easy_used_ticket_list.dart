import 'package:ferry_easy/shared/widgets/ferry_easy_used_regular_ticket.dart';
import 'package:flutter/material.dart';

import '../../src/dashboard/application/bloc_exports.dart';
import '../../src/dashboard/domain/ticket_model.dart';
import '../services/ticket_sorter.dart';
import 'ferry_easy_used_special_ticket.dart';

class UsedTicketList extends StatelessWidget {
  const UsedTicketList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        List<TicketModel> usedRegularTickets = state.usedRegularTickets;
        List<TicketModel> usedSpecialTickets = state.usedSpecialTickets;

        List<TicketModel> combinedUsedTickets =
            List<TicketModel>.from(usedRegularTickets)
              ..addAll(usedSpecialTickets);

        List<TicketModel> sortedUsedTickets =
            TicketUtils.sortTicketsDescendingByDate(combinedUsedTickets);

        return ListView.builder(
          shrinkWrap: true,
          itemCount: sortedUsedTickets.length,
          itemBuilder: (context, index) {
            var ticket = sortedUsedTickets[index];
            if (usedRegularTickets.contains(ticket)) {
              return UsedRegularTicket(
                ticket: ticket,
              );
            } else {
              return UsedSpecialTicket(
                ticket: ticket,
              );
            }
          },
        );
      },
    );
  }
}
