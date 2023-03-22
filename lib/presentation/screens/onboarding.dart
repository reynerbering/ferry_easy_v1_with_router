import 'package:ferry_easy/constants/constants.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_background_image_reusable.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_button.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ! Background image technique is to wrap arn box deco and boxfit.cover
          const BackgroundWidget(
            assetImage: AssetImage('assets/images/login.png'),
          ),

          // ! Background image container above

          // ! Centered padding with 25px
          // ! Crossaxislignment horizontal start and MainAxisAlignment start from bottom of the screen

          Center(
            // ! Padding to wrap around and indention
            child: Padding(
              padding: const EdgeInsets.all(25),
              // ! Column for straight line, starting from the bottom and starting from the left
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Escape The Line',
                    style: defaultHeadingBold,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Get your tickets in advance.',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Avoid standing in line to purchase a ticket.',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 40),
                  // ! Directs to button_widget.dart
                  FerryEasyButton(
                    title: 'Log In',
                    outline: true,
                    onTap: () => Navigator.of(context)
                        .pushNamed('/WelcomeBackLoginScreen'),
                  ),
                  const SizedBox(height: 20),
                  // ! Directs to button_widget.dart
                  FerryEasyButton(
                    title: 'Sign Up',
                    onTap: () =>
                        Navigator.of(context).pushNamed('/CreateAccountScreen'),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
