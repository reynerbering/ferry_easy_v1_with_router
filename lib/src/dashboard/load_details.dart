import 'package:ferry_easy/source/shared/app_colors.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_app_bar.dart';
import 'package:flutter/material.dart';

class LoadDetails extends StatelessWidget {
  const LoadDetails({super.key});

  static const id = 'load_details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: FEAppBar(
          title: 'Load Details',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 250,
            width: 250,
            child: Text(
              'INFO',
              style: TextStyle(
                color: kcPrimaryColor,
                fontSize: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
