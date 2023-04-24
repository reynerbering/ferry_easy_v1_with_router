import 'package:firebase_auth/firebase_auth.dart';

import '../../src/authentication/domain/user_model.dart';
import '../../src/dashboard/application/bloc_exports.dart';
import '../../src/dashboard/load_details.dart';
import '../shared_exports.dart';

class FEWalletLoad extends StatelessWidget {
  const FEWalletLoad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return BlocBuilder<TicketBloc, TicketState>(
      builder: (context, state) {
        return StreamBuilder<UserModel?>(
          stream: getUser(auth.currentUser!.uid),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final user = snapshot.data!;
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
                          FEText.walletCreditText(user.wallet.toString()),
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
                        children: const [
                          FEText.walletBalIndicator('Available Balance')
                        ],
                      ),
                    ],
                  ),
                ),
              );
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  color: kcPrimaryColor,
                ),
              );
            }
          },
        );
      },
    );
  }
}
