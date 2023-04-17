import '../../src/dashboard/application/bloc_exports.dart';
import '../../src/dashboard/ticket_confirmation.dart';
import '../shared_exports.dart';

class FESpecialQuantitySelector extends StatefulWidget {
  final int initialValue;
  final Function(int) onChanged;
  final TicketType ticketType;

  const FESpecialQuantitySelector({
    super.key,
    required this.initialValue,
    required this.onChanged,
    required this.ticketType,
  });

  @override
  _FESpecialQuantitySelectorState createState() =>
      _FESpecialQuantitySelectorState();
}

class _FESpecialQuantitySelectorState extends State<FESpecialQuantitySelector> {
  late int _value;

  int getTotalAmount() {
    return _value * getTicketPrice();
  }

  int getTicketPrice() {
    switch (widget.ticketType) {
      case TicketType.regular:
        return 35;
      case TicketType.special:
        return 29;
    }
  }

  String getTicketType() {
    switch (widget.ticketType) {
      case TicketType.regular:
        return 'Regular';
      case TicketType.special:
        return 'Special';
    }
  }

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue.clamp(1, 10);
  }

  void _incrementValue() {
    setState(() {
      if (_value < 10) {
        _value++;
        widget.onChanged(
            _value.clamp(1, 10)); // clamp _value before calling onChanged
      }
    });
  }

  void _decrementValue() {
    setState(() {
      if (_value > 1) {
        _value--;
        widget.onChanged(
            _value.clamp(1, 10)); // clamp _value before calling onChanged
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const FEText.buyTicketQuantity(
                  'Quantity',
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        color: kcPrimaryColor,
                        onPressed: _decrementValue,
                      ),
                      Text(
                        '$_value',
                        style: const TextStyle(color: kcPrimaryColor),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add),
                        color: kcPrimaryColor,
                        onPressed: _incrementValue,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            verticalSpaceMedium,
            state.walletBalance < state.specialTicketPrice
                ? const FEButton(
                    title: 'Buy Ticket',
                    disabled: true,
                  )
                : FEButton(
                    title: 'Buy Ticket',
                    outline: true,
                    onTap: () {
                      int totalAmount = getTotalAmount();
                      int ticketPrice = getTicketPrice();
                      String ticketType = getTicketType();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TicketConfirmationPage(
                            ticket: ticketType,
                            ticketPrice: ticketPrice,
                            ticketType: widget.ticketType,
                            quantity: _value,
                            totalAmount: totalAmount,
                          ),
                        ),
                      );
                    },
                  ),
          ],
        );
      },
    );
  }
}
