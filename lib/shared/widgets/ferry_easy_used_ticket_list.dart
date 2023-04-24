import 'package:ferry_easy/shared/widgets/ferry_easy_used_regular_ticket.dart';
import 'package:flutter/material.dart';

import '../../src/dashboard/application/bloc_exports.dart';
import '../../src/dashboard/domain/ticket.dart';
import 'ferry_easy_used_special_ticket.dart';

class UsedTicketList extends StatelessWidget {
  const UsedTicketList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        List<Ticket> usedRegularTickets = state.usedRegularTickets;
        List<Ticket> usedSpecialTickets = state.usedSpecialTickets;

        List<Ticket> combinedUsedTickets = List<Ticket>.from(usedRegularTickets)
          ..addAll(usedSpecialTickets);

        combinedUsedTickets
            .sort((a, b) => b.datePurchased.compareTo(a.datePurchased));

        // combinedUsedTickets.addAll(usedRegularTickets);
        // combinedUsedTickets.addAll(usedSpecialTickets);
        return ListView.builder(
          shrinkWrap: true,
          itemCount: combinedUsedTickets.length,
          itemBuilder: (context, index) {
            if (index < usedRegularTickets.length) {
              var ticketRegular = usedRegularTickets[index];
              return UsedRegularTicket(
                ticket: ticketRegular,
              );
            } else {
              // Adjust the index to the second list's index range
              var ticketSpecial =
                  usedSpecialTickets[index - usedRegularTickets.length];
              return UsedSpecialTicket(
                ticket: ticketSpecial,
              );
            }
          },
        );
      },
    );
  }
}
