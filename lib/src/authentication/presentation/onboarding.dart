import 'package:ferry_easy/source/shared/ui_helpers.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_button.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_text.dart';
import 'package:ferry_easy/src/authentication/presentation/create_account.dart';
import 'package:ferry_easy/src/authentication/presentation/welcome_screen.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  static const id = 'onboarding';

  @override
  Widget build(BuildContext context) {
    return FEBackgroundWidget(
      assetImage: const AssetImage('assets/images/login.png'),
      bgChild: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const FEText.onBoardingHead('Escape The Line'),
              verticalSpaceRegular,
              const FEText.onBoardingSub('Get your tickets in advance.'),
              verticalSpaceTiny,
              const FEText.onBoardingSub(
                  'Avoid standing in line to purchase a ticket.'),
              verticalSpaceLarge,
              FEButton(
                title: 'Log In',
                outline: true,
                onTap: () => Navigator.of(context).pushNamed(WelcomeScreen.id),
              ),
              verticalSpaceRegular,
              FEButton(
                title: 'Sign Up',
                onTap: () => Navigator.of(context).pushNamed(CreateAccount.id),
              ),
              verticalSpaceLarge,
            ],
          ),
        ),
      ),
    );
  }
}
