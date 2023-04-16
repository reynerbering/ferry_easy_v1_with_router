import '../../src/dashboard/load_details.dart';
import '../shared_exports.dart';

class FEWalletLoad extends StatelessWidget {
  const FEWalletLoad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(LoadDetails.id),
      child: Container(
        height: 100,
        width: double.infinity,
        margin: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FEText.walletCurrencyText('PHP'),
                horizontalSpaceSmall,
                const FEText.walletCreditText('23,000'),
                horizontalSpaceSmall,
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: kcPrimaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: const [
                      FEText.walletCashInText('Cash In'),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [FEText.walletBalIndicator('Available Balance')],
            ),
          ],
        ),
      ),
    );
  }
}
