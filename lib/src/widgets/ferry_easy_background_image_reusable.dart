import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final AssetImage assetImage;
  final Widget? bgChild;
  final double? opacity;

  const BackgroundWidget({
    super.key,
    required this.assetImage,
    this.bgChild,
    this.opacity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // ! Background image holder + transparent color on scaffold to show the bg image
      decoration: BoxDecoration(
        image: DecorationImage(
          image: assetImage,
          opacity: opacity ?? 1.0,
          fit: BoxFit.cover,
        ),
      ),
      child: bgChild,
    );
  }
}