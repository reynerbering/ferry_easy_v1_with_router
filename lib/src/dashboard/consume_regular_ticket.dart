import '../../shared/shared_exports.dart';
import '../../shared/widgets/ferry_easy_use_regular_ticket.dart';

class ConsumeRegularTicket extends StatelessWidget {
  static const id = 'consume_special_ticket';

  const ConsumeRegularTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return FEBackgroundWidget(
      assetImage: const AssetImage('assets/images/login.png'),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: FEAppBar(title: 'Passenger Ticket')),
        body: Column(
          children: const [
            verticalSpaceRegular,
            FEUseRegularTicket(),
          ],
        ),
      ),
    );
  }
}
