import 'package:ferry_easy/shared/shared_exports.dart';
import 'package:ferry_easy/src/dashboard/load_details.dart';

class LoadOptions extends StatelessWidget {
  static const id = 'load_options';

  const LoadOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: FEAppBar(title: 'Load Options'),
      ),
      body: Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            verticalSpaceRegular,
            FEButton(
              title: 'Over-the-Counter',
              onTap: () {
                Navigator.of(context).pushReplacementNamed(LoadDetails.id);
              },
            ),
            verticalSpaceRegular,
            FEButton(
              disabled: true,
              title: 'GCash',
              onTap: () {},
            ),
            verticalSpaceRegular,
            FEButton(
              disabled: true,
              title: 'Maya',
              onTap: () {},
            ),
            verticalSpaceRegular,
          ],
        ),
      ),
    );
  }
}
