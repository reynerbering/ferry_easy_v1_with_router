import 'package:ferry_easy/source/shared/ui_helpers.dart';
import 'package:ferry_easy/source/widgets/ferry_easy_text.dart';

import '../../source/shared/app_colors.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            // ! Show dialog box
            onTap: () {},
            child: Container(
                width: displayWidth(context),
                height: 225,
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: kcPrimaryColor,
                          radius: 5,
                        ),
                        horizontalSpaceTiny,
                        FEText.notifHeader('ATTENTION PASSENGERS!!!'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: FEText.notifSubtext(
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )),
          ),

          // Container(
          //     width: displayWidth(context),
          //     height: 200,
          //     padding: const EdgeInsets.all(25),
          //     color: Colors.grey,
          //     child: Row(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         CircleAvatar(
          //           backgroundColor: kcPrimaryColor,
          //           radius: 5,
          //         ),
          //         horizontalSpaceRegular,
          //         Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             FEText.notifHeader('ATTENTION PASSENGERS!!!'),
          //             Text(
          //                 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.')
          //           ],
          //         ),
          //       ],
          //     )),
        ],
      ),
    );
  }
}
