import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class MewnuBigLogo extends StatelessWidget {
  final bool backButton;

  const MewnuBigLogo({super.key, this.backButton = false});

  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: const Duration(milliseconds: 0),
      child: Center(
        child: Image.asset(
          'assets/icons/png/mewnu-logo.png',
          height: 64,
          width: 64,
        ),
      ),
    );
  }
}
