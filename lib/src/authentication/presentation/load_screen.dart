import 'dart:async';

import 'package:ferry_easy/shared/shared_exports.dart';
import 'package:ferry_easy/src/dashboard/dashboard.dart';
import 'package:get_storage/get_storage.dart';

import 'onboarding.dart';

class LoadScreen extends StatefulWidget {
  const LoadScreen({super.key});

  @override
  State<LoadScreen> createState() => _LoadScreenState();
}

class _LoadScreenState extends State<LoadScreen> {
  final GetStorage _getStorage = GetStorage();
  @override
  void initState() {
    openNextPage(context);

    super.initState();
  }

  openNextPage(BuildContext context) {
    Timer(const Duration(milliseconds: 2000), () {
      if (_getStorage.read('token') == null ||
          _getStorage.read('token') == '') {
        Navigator.pushReplacementNamed(context, Onboarding.id);
      } else {
        Navigator.pushReplacementNamed(context, Dashboard.id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: CircularProgressIndicator(
        color: kcPrimaryColor,
      )),
    );
  }
}
