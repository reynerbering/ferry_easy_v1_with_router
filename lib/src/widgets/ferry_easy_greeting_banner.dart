import 'package:ferry_easy/src/shared/app_colors.dart';
import 'package:ferry_easy/src/shared/ui_helpers.dart';
import 'package:ferry_easy/src/widgets/ferry_easy_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FEGreetingBanner extends StatelessWidget {
  final String name;

  const FEGreetingBanner({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kcPrimaryColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      height: 65,
      width: 300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FEText.dashTextTitle('Good Morning, $name !'),
          horizontalSpaceRegular,
          SvgPicture.asset(
            'assets/icons/sun.svg',
            height: 40,
            width: 40,
          ),
        ],
      ),
    );
  }
}
