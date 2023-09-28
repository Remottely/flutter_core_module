import 'package:flutter/material.dart';

class MewnuScrollableBackgroundImage extends StatelessWidget {
  final String imagePath;
  const MewnuScrollableBackgroundImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // TODO FILTER AND REMOVE STACK
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 1.1,
          color: Colors.black,
          colorBlendMode: BlendMode.color,
        ),
        Container(
          color: Colors.black.withOpacity(0.86),
          height: MediaQuery.of(context).size.height * 1.1,
        ),
      ],
    );
  }
}
