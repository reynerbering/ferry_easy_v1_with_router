import '../shared_exports.dart';

class FEAppBar extends StatelessWidget {
  final String title;
  final Widget? leading;
  final Widget? trailing;
  final AssetImage? image;
  final String? logo;
  final void Function()? onTap;
  final TabBar? tabBar;
  final bool? isDisabled;

  const FEAppBar({
    super.key,
    required this.title,
    this.leading,
    this.trailing,
    this.image,
    this.logo,
    this.onTap,
    this.tabBar,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: tabBar,
      iconTheme: const IconThemeData(color: kcPrimaryColor),
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (logo != null)
            Image(
              image: AssetImage(logo!),
              height: 50.0,
              width: 50.0,
            ),
          Text(
            title,
            style: const TextStyle(color: kcPrimaryColor),
          ),
        ],
      ),
    );
  }
}
