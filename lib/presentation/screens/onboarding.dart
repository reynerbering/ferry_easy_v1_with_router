import 'package:ferry_easy/src/shared/ui_helpers.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_button.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_text.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

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
                onTap: () =>
                    Navigator.of(context).pushNamed('/WelcomeBackLoginScreen'),
              ),
              verticalSpaceRegular,
              FEButton(
                title: 'Sign Up',
                onTap: () =>
                    Navigator.of(context).pushNamed('/CreateAccountScreen'),
              ),
              verticalSpaceLarge,
            ],
          ),
        ),
      ),
    );
  }
}
