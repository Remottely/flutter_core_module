import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MewnuIllustrationImage extends StatelessWidget {
  const MewnuIllustrationImage(
      {super.key, required this.imagePath, required this.filterOpacity});

  final String imagePath;
  final double filterOpacity;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagePath,
      fit: BoxFit.contain,
      height: 196,
    );
  }
}
