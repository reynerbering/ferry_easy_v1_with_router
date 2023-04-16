import '../shared_exports.dart';

class FEDividerOrWidget extends StatelessWidget {
  const FEDividerOrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(
              right: 15.0,
            ),
            child: const Divider(
              color: Colors.grey,
              height: 50,
            ),
          ),
        ),
        const Text(
          'or',
          style: TextStyle(
            color: kcMediumGrayColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(
              left: 15.0,
            ),
            child: const Divider(
              color: Colors.grey,
              height: 50,
            ),
          ),
        ),
      ],
    );
  }
}
