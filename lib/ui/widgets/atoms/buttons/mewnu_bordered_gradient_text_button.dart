import 'package:flutter/material.dart';

class MewnuBorderedGradientTextButton extends StatelessWidget {
  final double? radiusValue;
  final double? width;
  final double height;
  final Color color;
  final void Function()? onPressed;
  final Widget child;

  const MewnuBorderedGradientTextButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.radiusValue,
    this.width,
    this.height = 44.0,
    this.color = Colors.blue, // TODO REMOVE THIS COLOR
  });

  @override
  Widget build(BuildContext context) {
    final radiusVal = radiusValue ?? 5;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radiusVal),
      ),
      child: Container(
        margin: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(radiusVal - 1),
        ),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: Colors.transparent,
            disabledForegroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radiusVal - 1),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
