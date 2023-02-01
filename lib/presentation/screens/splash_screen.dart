import 'package:ferry_easy/constants/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ! Ferry Easy Logo
              Container(
                alignment: Alignment.center,
                child: const Image(
                  image: AssetImage('assets/images/ferryeasy-logo-03.png'),
                  height: 250,
                  width: 250,
                ),
              ),
              // ! Splash Screen Title : FerryEasy with font Idealist Sans
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'FerryEasy',
                  style: splashScreenTitle,
                ),
              ),
            ],
          ),
          // ! Waves.png on the bottom part of the screen
          Container(
            alignment: Alignment.bottomCenter,
            child: const Image(
              image: AssetImage('assets/images/waves.png'),
            ),
          ),
        ],
      ),
    );
  }
}
