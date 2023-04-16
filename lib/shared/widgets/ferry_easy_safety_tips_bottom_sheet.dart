import '../shared_exports.dart';

class FESafetyTips extends StatelessWidget {
  const FESafetyTips({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                height: 200,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  child: Image.asset(
                    'assets/images/princesa.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              verticalSpaceMedium,
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Safety Tips for Ferry Passengers',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Before Boarding',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              const TipTile(
                image: 'locked.png',
                title: 'Make sure your car is locked and valuables are hidden.',
              ),
              const TipTile(
                image: 'clock-time.png',
                title: 'Give yourself enough time to board prior to departure.',
              ),
              const TipTile(
                image: 'roadblock.png',
                title: 'Refrain from climbing over railings or other barriers.',
              ),
              const TipTile(
                image: 'biker.png',
                title:
                    'Don\'t board the ferry on a bike, skateboard, or rollerblades.',
              ),
              const TipTile(
                image: 'correct.png',
                title: 'Don\'t touch, move, or manipulate ramps or walkways.',
              ),
              const TipTile(
                image: 'moon.png',
                title:
                    'At night, stay in well-lit areas and within sight of incoming ferries.',
              ),
              const TipTile(
                image: 'dragon.png',
                title: 'Don\'t allow children to play on the dock.',
              ),
              const Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'Safety While on the Dock',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  '     People typically disembark before you can board. Allow them room to leave before the deckhand gives the signal to board. Gangways can be dangerous if you’re not careful. Therefore, always hold the handrail, keep an eye on your footing, and stay off your mobile phone while boarding.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Inter',
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  '     Also\, give careful attention to the elderly and individuals accompanied by caregivers or who use mobility aids. Let them go in front so they have room to board. This also gives them time to do so safely.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Inter',
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'When Aboard the Vessel',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  '     Rushing to a vessel and carelessness on the dock can lead to serious injuries or even falling overboard. Once you find your seat:',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Inter',
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const TipTile(
                image: 'suitcase.png',
                title:
                    'Keep luggage out of the way and ask for help stowing large items.',
              ),
              const TipTile(
                image: 'vest.png',
                title: 'Note where the exits and lifejackets are located.',
              ),
              const TipTile(
                image: 'standing-bike.png',
                title: 'Hold on to a bicycle or secure it to a bike rack.',
              ),
              const TipTile(
                image: 'window.png',
                title: 'Don\'t lean out the window.',
              ),
              const TipTile(
                image: 'seat.png',
                title: 'Refrain from standing on top of seats.',
              ),
              const TipTile(
                image: 'man-sitting.png',
                title: 'Don\'t sit children on your shoulders or rails.',
              ),
              const TipTile(
                image: 'boat.png',
                title: 'Don\'t sit on the boat\'s edge or on the bow.',
              ),
              const TipTile(
                image: 'water.png',
                title:
                    'Stay seated, as ferries are prone to sudden movements with the water.',
              ),
              verticalSpaceMedium,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/ferryeasy-logo-03.png',
                    height: 25,
                    width: 25,
                  ),
                  const FEText.buyTicketTitle('FerryEasy Ticket'),
                ],
              ),
              verticalSpaceTiny,
              const Center(
                child: Text(
                  'METRO FERRY, INC.',
                  style: TextStyle(
                    color: kcPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: MaterialButton(
              onPressed: () => Navigator.pop(context),
              color: Colors.white,
              shape: const CircleBorder(),
              child: const Icon(
                Icons.close,
                color: kcPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TipTile extends StatelessWidget {
  final String image;
  final String title;
  const TipTile({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: kcLightGrayColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Image.asset(
          'assets/images/$image',
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontFamily: 'Inter',
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
