import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuFlatButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final Color? color;
  final void Function()? onPressed;
  final Widget child;

  const MewnuFlatButton(
      {super.key,
      required this.onPressed,
      required this.child,
      this.borderRadius,
      this.width,
      this.height,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? UISizes.heightButton,
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).custom.colors.enabledColor,
        borderRadius: borderRadius ?? UIBorderRadius.flatButton,
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: Colors.transparent,
          disabledForegroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 32),
          shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(5)),
        ),
        child: child,
      ),
    );
  }
}
