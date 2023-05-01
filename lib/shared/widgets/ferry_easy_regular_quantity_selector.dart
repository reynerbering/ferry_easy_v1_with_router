import 'package:firebase_auth/firebase_auth.dart';

import '../../src/authentication/domain/user_model.dart';
import '../../src/dashboard/application/bloc_exports.dart';
import '../../src/dashboard/ticket_confirmation.dart';
import '../shared_exports.dart';

enum TicketType { regular, special }

class FERegularQuantitySelector extends StatefulWidget {
  final int initialValue;
  final Function(int) onChanged;
  final TicketType ticketType;

  const FERegularQuantitySelector({
    super.key,
    required this.initialValue,
    required this.onChanged,
    required this.ticketType,
  });

  @override
  FERegularQuantitySelectorState createState() =>
      FERegularQuantitySelectorState();
}

class FERegularQuantitySelectorState extends State<FERegularQuantitySelector> {
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

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        return StreamBuilder<UserModel?>(
          stream: getUser(auth.currentUser!.uid),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final walletBalance = snapshot.data!.wallet;
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FEText.buyTicketQuantity(
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
                              onPressed: () => setState(() {
                                if (_value > 1) {
                                  _value--;
                                  if (getTotalAmount() > walletBalance) {
                                    widget.onChanged(
                                        1); // clamp _value to 1 if balance is not enough
                                  } else {
                                    widget.onChanged(_value);
                                  }
                                }
                              }),
                            ),
                            Text(
                              '$_value',
                              style: const TextStyle(color: kcPrimaryColor),
                            ),
                            IconButton(
                              icon: const Icon(Icons.add),
                              color: kcPrimaryColor,
                              onPressed: () => setState(() {
                                if (_value < 10) {
                                  _value++;
                                  if (getTotalAmount() > walletBalance) {
                                    widget.onChanged(
                                        10); // clamp _value to 10 if balance is not enough
                                  } else {
                                    widget.onChanged(_value);
                                  }
                                }
                              }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  verticalSpaceMedium,
                  walletBalance < getTotalAmount()
                      ? Column(
                          children: const [
                            verticalSpaceTiny,
                            FEButton(
                              title: 'Buy Ticket',
                              disabled: true,
                            ),
                            verticalSpaceTiny,
                            Text(
                              'Your balance is not enough to buy this ticket',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
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
            } else {
              return const CircularProgressIndicator(
                color: kcPrimaryColor,
              );
            }
          },
        );
      },
    );
  }
}
