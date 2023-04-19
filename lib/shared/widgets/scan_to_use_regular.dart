import '../../src/dashboard/application/bloc_exports.dart';
import '../../src/dashboard/domain/ticket.dart';
import '../shared_exports.dart';

class ScanToUseRegularTicket extends StatelessWidget {
  const ScanToUseRegularTicket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        List<Ticket> activeRegularTickets = state.activeRegularTickets;

        return GestureDetector(
          onTap: () {
            var ticket = activeRegularTickets.first;
            context.read<TicketBloc>().add(UseRegularTicket(ticket: ticket));

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
