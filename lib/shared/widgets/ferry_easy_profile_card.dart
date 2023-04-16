// ! Make dynamic from firebase

import '../shared_exports.dart';

class ProfileCard extends StatelessWidget {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phoneNumber;
  final String? address;

  const ProfileCard({
    super.key,
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey, //New
            blurRadius: 25.0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/bae-suzy.jpg'),
            maxRadius: 50,
          ),
          verticalSpaceRegular,
          const FEText.userLNHeader('Canizares'),
          const FEText.userFNHeader('Fabian Miguel'),
          verticalSpaceRegular,
          const Divider(),
          UserDetails(
            icon: Icons.email,
            text: 'fabiancanizares@gmail.com',
          ),
          UserDetails(
            icon: Icons.phone,
            text: '+63 995 849 4308',
          ),
          UserDetails(
            icon: Icons.location_on,
            text: 'Cebu City',
          ),
          verticalSpaceSmall,
        ],
      ),
    );
  }
}

class UserDetails extends StatelessWidget {
  final IconData icon;
  final String text;

  const UserDetails({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: kcPrimaryColor,
        ),
        horizontalSpaceTiny,
        FEText.userSubText(
          text,
        ),
      ],
    );
  }
}
