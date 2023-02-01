import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/constants.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ! FerryEasy appbar, centered logo and name, menu on the right size and back on the left side, action property always on the right
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage('assets/images/ferryeasy-logo-03.png'),
              height: 50,
              width: 50,
            ),
            Text(
              "FerryEasy",
              style: TextStyle(color: ferryPrimaryColor),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: ferryPrimaryColor,
          ),
        ],
      ),
      // ! Stack body for image container and arrangement
      body: Stack(
        children: [
          // ! Background image container
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/ferryboat.jpg'),
                  opacity: 0.2,
                  fit: BoxFit.cover),
            ),
          ),
          // ! Column for all the widgets arranged at start
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ! Goodmorning/evening container and padding with specific horizontal width and height
              Container(
                margin: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                decoration: const BoxDecoration(
                  color: ferryPrimaryColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                height: 65,
                width: 300,
                // ! Greetings dialog with icon on the right side
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ! Text Widget for username
                    // todo: Parse username to text e.g. {$username}
                    const Text(
                      'Good Morning, SUSSY!',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    // ! Svg picture with padding
                    // todo: Parse icon to day/night e.g. if AM = Sun : PM = Moon
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/icons/sun.svg',
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ],
                ),
              ),
              // ! Added Padding to column for spacing outside the area of the card
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 25),
                // ! added column to put all widgets at the left side (crossAxisAlignment.start)
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ! Active Ferries Title
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        'Active Ferries',
                        style: TextStyle(
                          color: ferryPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    // ! Card with circular border
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      // ! Card width size wrapped inside a sized box
                      child: SizedBox(
                        width: double.infinity,
                        // ! Added padding for spacing for all the widgets inside the card
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          // ! Column for arrangement of all widgets inside the card
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              ShipNameWidget(
                                shipName: 'MV Carmen Uno',
                              ),
                              DestinationWidget(
                                firstLocation: 'From: Cebu City',
                                secondLocation: 'To: Lapu-lapu City',
                                countdownTimer: '0:30:29',
                              ),
                              EtaWidget(
                                estTimeArrival: '10:45:00',
                              ),
                              Divider(
                                color: ferryPrimaryColor,
                                height: 50,
                              ),
                              ShipNameWidget(
                                shipName: 'MV Princesa',
                              ),
                              DestinationWidget(
                                firstLocation: 'From: Lapu-lapu City',
                                secondLocation: 'To: Cebu City',
                                countdownTimer: '0:45:21',
                              ),
                              EtaWidget(
                                estTimeArrival: '10:50:00',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      // ! Floating action button for shortcut to wallet
      // todo: Add routing for wallet directory
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(15.0),
        child: FloatingActionButton(
          backgroundColor: ferryPrimaryColor,
          splashColor: Colors.white,
          tooltip: 'My Wallet',
          onPressed: () {},
          child: const Icon(Icons.wallet),
        ),
      ),
    );
  }
}

// ! Ship Name Title widget
// todo: parse name to actual name e.g. {$shipName}
class ShipNameWidget extends StatelessWidget {
  final String shipName;
  const ShipNameWidget({
    Key? key,
    required this.shipName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          shipName,
          style: const TextStyle(
            color: ferryPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

// ! Destination Title widget
// todo: parse countdown timer to actual timer name e.g. {$countdownTimer}
class DestinationWidget extends StatelessWidget {
  final String firstLocation;
  final String secondLocation;
  final String countdownTimer;
  const DestinationWidget({
    Key? key,
    required this.firstLocation,
    required this.secondLocation,
    required this.countdownTimer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/arrival.svg',
          height: 40,
          width: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 3.0, left: 3.0),
              child: Text(
                firstLocation,
                style: const TextStyle(color: ferryPrimaryColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0, left: 3.0),
              child: Text(
                secondLocation,
                style: const TextStyle(color: ferryPrimaryColor),
              ),
            ),
          ],
        ),
        // ! Time widget countdown timer
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  countdownTimer,
                  style: const TextStyle(
                    color: ferryPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ! Estimated time of arrival widget
// todo: parse time to actual estTimeOfArrival e.g. {$estTimeArrival}

class EtaWidget extends StatelessWidget {
  final String estTimeArrival;
  const EtaWidget({
    Key? key,
    required this.estTimeArrival,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Est. Arrival Time: ',
            style: TextStyle(
              color: ferryPrimaryColor,
              fontFamily: 'Montserrat',
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: '$estTimeArrival AM',
            style: const TextStyle(
              color: ferryPrimaryColor,
              fontFamily: 'Montserrat',
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
