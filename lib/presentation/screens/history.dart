import 'package:flutter/material.dart';

class History extends StatelessWidget {
  final PreferredSizeWidget appBar;
  const History({super.key, required this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Text(
          'HISTORY',
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
