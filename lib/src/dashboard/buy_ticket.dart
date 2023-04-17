import '../../shared/shared_exports.dart';
import '../../shared/widgets/ferry_easy_buy_special_ticket.dart';

class BuyTicket extends StatefulWidget {
  static const id = 'buy_ticket';

  final int? value;
  const BuyTicket({super.key, this.value});

  @override
  State<BuyTicket> createState() => _BuyTicketState();
}

class _BuyTicketState extends State<BuyTicket> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  List<Widget> pages = [];

  void _onButton1Pressed() {
    setState(() {
      _controller.jumpToPage(0);
      _currentPage = 0;
    });
  }

  void _onButton2Pressed() {
    setState(() {
      _controller.jumpToPage(1);
      _currentPage = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    pages = [
      SingleChildScrollView(
        child: Column(
          children: [
            const FEWalletLoad(),
            TicketSelector(
              currentPage: _currentPage,
              firstPage: _onButton1Pressed,
              secondPage: _onButton2Pressed,
            ),
            const FEBuyRegularTicket(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              child: FERegularQuantitySelector(
                initialValue: 0,
                onChanged: (value) {},
                ticketType: TicketType.regular,
              ),
            ),
          ],
        ),
      ),
      SingleChildScrollView(
        child: Column(
          children: [
            const FEWalletLoad(),
            TicketSelector(
              currentPage: _currentPage,
              firstPage: _onButton1Pressed,
              secondPage: _onButton2Pressed,
            ),
            const FEBuySpecialTicket(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
              child: FESpecialQuantitySelector(
                initialValue: 0,
                onChanged: (value) {},
                ticketType: TicketType.special,
              ),
            ),
          ],
        ),
      ),
    ];

    return FEBackgroundWidget(
      assetImage: const AssetImage('assets/images/login.png'),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: FEAppBar(title: 'Select Ticket'),
        ),
        body: PageView(
          controller: _controller,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          children: pages,
        ),
      ),
    );
  }
}

class TicketSelector extends StatelessWidget {
  const TicketSelector({
    super.key,
    required int currentPage,
    this.firstPage,
    this.secondPage,
  }) : _currentPage = currentPage;

  final int _currentPage;
  final void Function()? firstPage;
  final void Function()? secondPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: firstPage,
              focusColor: kcMediumGrayColor,
              child: Text(
                'REGULAR',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:
                        _currentPage == 0 ? kcPrimaryColor : kcMediumGrayColor),
              ),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: secondPage,
              child: Text(
                'SPECIAL',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:
                        _currentPage == 1 ? kcPrimaryColor : kcMediumGrayColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
