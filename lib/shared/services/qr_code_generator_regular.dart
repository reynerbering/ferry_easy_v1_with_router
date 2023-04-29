import 'package:qr_flutter/qr_flutter.dart';

// Add your custom imports here
import '../../src/dashboard/application/bloc_exports.dart';
import '../../src/dashboard/domain/ticket_model.dart';
import '../shared_exports.dart';

class QRGeneratorRegular extends StatefulWidget {
  const QRGeneratorRegular({super.key});

  @override
  _QRGeneratorRegularState createState() => _QRGeneratorRegularState();
}

class _QRGeneratorRegularState extends State<QRGeneratorRegular> {
  String qrData = "Hello World";

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

            // Update the QR data with the ticket information
            setState(() {
              // qrData = ticket.toJson().toString();
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              QrImage(
                data: qrData,
                version: QrVersions.auto,
                size: 150,
                gapless: false,
              ),
            ],
          ),
        );
      },
    );
  }
}
