import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  final PreferredSizeWidget appBar;
  const Wallet({super.key, required this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Text(
          'WALLET',
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
