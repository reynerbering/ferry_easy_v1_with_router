import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'NOTIFS',
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
