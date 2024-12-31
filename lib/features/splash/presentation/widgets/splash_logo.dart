import 'package:boxly/core/constants/image_constants.dart';
import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageAssets.logo,
      height: 120,
      width: 120,
    );
  }
}
