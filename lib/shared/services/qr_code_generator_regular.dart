import 'dart:async';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:uni_links/uni_links.dart';

import '../../src/dashboard/application/bloc_exports.dart';
import '../../src/dashboard/domain/ticket_model.dart';
import '../shared_exports.dart';

class QRGeneratorRegular extends StatefulWidget {
  const QRGeneratorRegular({Key? key}) : super(key: key);

  @override
  QRGeneratorRegularState createState() => QRGeneratorRegularState();
}

class QRGeneratorRegularState extends State<QRGeneratorRegular> {
  final String qrData = "ferryeasy://trigger_function/";
  StreamSubscription? _sub;

  @override
  void initState() {
    super.initState();
    initUniLinks();
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  Future<void> initUniLinks() async {
    try {
      // Attach a listener to the incoming links
      _sub = uriLinkStream.listen((Uri? uri) async {
        if (uri?.toString() == qrData) {
          executeOnTapFunction();
        }
      }, onError: (Object err) {
        // Handle error here
      });
    } catch (e) {
      print(e.toString());
    }
  }

  void executeOnTapFunction() {
    print('Scanned!');
    // Add your onTap function logic here
  }

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
