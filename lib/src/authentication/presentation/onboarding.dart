import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ferry_easy/shared/styles/ui_helpers.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_background_image.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_button.dart';
import 'package:ferry_easy/shared/widgets/ferry_easy_text.dart';
import 'package:ferry_easy/src/authentication/presentation/create_account.dart';
import 'package:ferry_easy/src/authentication/presentation/welcome_screen.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  static const id = 'onboarding';

  @override
  Widget build(BuildContext context) {
    return FEBackgroundWidget(
      assetImage: const AssetImage('assets/images/login.png'),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  FadeAnimatedText(
                    'Escape The Line',
                    textStyle: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  FadeAnimatedText(
                    'Buy Tickets in Advance',
                    textStyle: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  FadeAnimatedText(
                    'View Ferry Schedules',
                    textStyle: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              verticalSpaceRegular,
              FEText.onBoardingSub('Get your tickets in advance.'),
              verticalSpaceTiny,
              FEText.onBoardingSub(
                  'Avoid standing in line to purchase a ticket.'),
              verticalSpaceLarge,
              FEButton(
                title: 'Log In',
                outline: true,
                onTap: () => Navigator.of(context)
                    .pushReplacementNamed(WelcomeScreen.id),
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
