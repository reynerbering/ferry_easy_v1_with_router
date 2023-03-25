import 'package:ferry_easy/src/shared/ui_helpers.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_button.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_text.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundWidget(
            assetImage: AssetImage('assets/images/login.png'),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const FerryEasyText.onBoardingHead('Escape The Line'),
                  verticalSpaceRegular,
                  const FerryEasyText.onBoardingSub(
                      'Get your tickets in advance.'),
                  verticalSpaceTiny,
                  const FerryEasyText.onBoardingSub(
                      'Avoid standing in line to purchase a ticket.'),
                  verticalSpaceLarge,
                  FerryEasyButton(
                    title: 'Log In',
                    outline: true,
                    onTap: () => Navigator.of(context)
                        .pushNamed('/WelcomeBackLoginScreen'),
                  ),
                  verticalSpaceRegular,
                  FerryEasyButton(
                    title: 'Sign Up',
                    onTap: () =>
                        Navigator.of(context).pushNamed('/CreateAccountScreen'),
                  ),
                  verticalSpaceLarge,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
