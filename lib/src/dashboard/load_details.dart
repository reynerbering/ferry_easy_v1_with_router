import 'package:firebase_auth/firebase_auth.dart';

import '../../shared/shared_exports.dart';
import '../authentication/domain/user_model.dart';

class LoadDetails extends StatelessWidget {
  const LoadDetails({super.key});

  static const id = 'load_details';

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return StreamBuilder<UserModel?>(
        stream: getUser(auth.currentUser!.uid),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final user = snapshot.data!;
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
                children: [
                  const Text(
                    'PLEASE SHOW THIS PAGE TO THE CASHIER',
                    style: TextStyle(
                        color: kcPrimaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: kcLightGrayColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: const EdgeInsets.all(25),
                    padding: const EdgeInsets.all(15),
                    height: 200,
                    width: double.infinity,
                    child: Column(
                      children: [
                        verticalSpaceLarge,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                FEText.buyTicketCompany('User:'),
                                FEText.buyTicketCompany('First Name:'),
                                FEText.buyTicketCompany('Last Name:'),
                              ],
                            ),
                            horizontalSpaceRegular,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FEText.buyTicketCompany(user.email),
                                  FEText.buyTicketCompany(user.firstName),
                                  FEText.buyTicketCompany(user.lastName),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: FEButton(
                      title: 'Close this page',
                      onTap: () => Navigator.pop(context),
                    ),
                  ),
                ],
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
        });
  }
}
