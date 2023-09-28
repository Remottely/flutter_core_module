import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class MewnuSmallLogo extends StatelessWidget {
  final bool backButton;

  const MewnuSmallLogo({super.key, this.backButton = false});

  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: const Duration(milliseconds: 0),
      child: Image.asset(
        'assets/icons/png/mewnu-logo.png',
        height: 32,
        width: 32,
      ),
    );
  }
}
