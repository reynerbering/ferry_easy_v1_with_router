import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'WALLET',
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
