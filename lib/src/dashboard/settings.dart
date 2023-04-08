import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  final PreferredSizeWidget appBar;
  const Settings({super.key, required this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'SETTINGS',
          style: TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
