import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuCloseButton extends StatelessWidget {
  const MewnuCloseButton({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // highlightColor: Colors.transparent,
      // splashColor: Colors.transparent,
      onTap: onPressed,
      child: Icon(
        Icons.close_sharp,
        size: 24,
        color: Theme.of(context).brightness == Brightness.dark
            ? Theme.of(context).custom.colors.linearGradientColor1
            : Theme.of(context).disabledColor,
      ),
    );
  }
}
