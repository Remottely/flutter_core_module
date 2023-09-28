import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuBackButton extends StatelessWidget {
  const MewnuBackButton({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onPressed: onPressed,
      icon: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 24,
          color: Theme.of(context).brightness == Brightness.dark
              ? Theme.of(context).custom.colors.linearGradientColor1
              : Theme.of(context).disabledColor,
        ),
      ),
    );
  }
}
