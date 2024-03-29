import '../../src/dashboard/application/bloc_exports.dart';
import '../../src/dashboard/domain/ticket_model.dart';
import '../services/qr_code_generator_regular.dart';
import '../shared_exports.dart';

class ScanToUseRegularTicket extends StatelessWidget {
  const ScanToUseRegularTicket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        List<TicketModel> activeRegularTickets = state.activeRegularTickets;

        return GestureDetector(
          onTap: () {
            var ticket = activeRegularTickets.first;
            context.read<TicketBloc>().add(UseRegularTicket(ticket: ticket));
            context.read<TicketBloc>().add(GetAllTickets());
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
            child: const QRGeneratorRegular(),
          ),
        );
      },
    );
  }
}
