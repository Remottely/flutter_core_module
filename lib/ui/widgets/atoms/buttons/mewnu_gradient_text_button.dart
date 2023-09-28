import 'package:flutter/material.dart';

class MewnuGradientTextButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final void Function()? onPressed;
  final Widget child;

  const MewnuGradientTextButton(
      {super.key,
      required this.onPressed,
      required this.child,
      this.borderRadius,
      this.width,
      this.height = 44.0,
      this.gradient = const LinearGradient(
          colors: [Colors.transparent, Colors.transparent])});

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(5);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: Colors.transparent,
          disabledForegroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 32),
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}
