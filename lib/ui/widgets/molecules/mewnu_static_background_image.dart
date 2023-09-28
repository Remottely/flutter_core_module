import 'package:flutter/material.dart';

class MewnuStaticBackgroundImage extends StatelessWidget {
  const MewnuStaticBackgroundImage(
      {super.key, required this.imagePath, required this.filterOpacity});

  final String imagePath;
  final double filterOpacity;

  @override
  Widget build(BuildContext context) {
    return Stack(
      // TODO FILTER AND REMOVE STACK
      fit: StackFit.expand,
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
          color: Colors.black,
          colorBlendMode: BlendMode.color,
        ),
        Container(
          color: Colors.black.withOpacity(filterOpacity),
        ),
      ],
    );
  }
}
