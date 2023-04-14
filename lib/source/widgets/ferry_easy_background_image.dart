import 'package:flutter/material.dart';

class FEBackgroundWidget extends StatelessWidget {
  final AssetImage assetImage;
  final Widget? child;
  final double? opacity;

  const FEBackgroundWidget({
    super.key,
    required this.assetImage,
    this.child,
    this.opacity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: assetImage,
          opacity: opacity ?? 1.0,
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
