import 'package:qr_flutter/qr_flutter.dart';

// Add your custom imports here
import '../../src/dashboard/application/bloc_exports.dart';
import '../../src/dashboard/domain/ticket_model.dart';
import '../shared_exports.dart';

class QRGeneratorSpecial extends StatefulWidget {
  const QRGeneratorSpecial({super.key});

  @override
  _QRGeneratorSpecialState createState() => _QRGeneratorSpecialState();
}

class _QRGeneratorSpecialState extends State<QRGeneratorSpecial> {
  String qrData = "Hello World";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        List<TicketModel> activeSpecialTickets = state.activeSpecialTickets;

        return GestureDetector(
          onTap: () {
            var ticket = activeSpecialTickets.first;
            context.read<TicketBloc>().add(UseSpecialTicket(ticket: ticket));
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
