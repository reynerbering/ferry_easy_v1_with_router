import '../../src/dashboard/application/bloc_exports.dart';
import '../../src/dashboard/domain/ticket.dart';
import '../shared_exports.dart';

class ScanToUseSpecialTicket extends StatelessWidget {
  const ScanToUseSpecialTicket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        List<Ticket> activeSpecialTickets = state.activeSpecialTickets;

        return GestureDetector(
          onTap: () {
            var ticket = activeSpecialTickets.first;
            context.read<TicketBloc>().add(UseSpecialTicket(ticket: ticket));

            showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25.0),
                ),
              ),
              context: context,
              builder: (BuildContext context) {
                return const FESafetyTips();
              },
            );
          },
          child: Container(
            color: Colors.grey,
            height: 150,
            width: 150,
          ),
        );
      },
    );
  }
}
