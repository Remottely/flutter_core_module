import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuValidateFlatButton extends StatelessWidget {
  final String label;
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Color? enabledColor;
  final Color? disabledColor;
  final void Function()? onPressed;
  final bool isValid;

  const MewnuValidateFlatButton(this.label,
      {super.key,
      required this.onPressed,
      this.borderRadius,
      this.width,
      this.height = 44.0,
      this.enabledColor,
      this.disabledColor,
      required this.isValid});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: isValid
            ? enabledColor ?? Theme.of(context).custom.colors.enabledColor
            : disabledColor ?? Theme.of(context).custom.colors.disabledColor,
        borderRadius: borderRadius ?? BorderRadius.circular(5),
      ),
      child: TextButton(
        onPressed: isValid ? onPressed : null,
        style: TextButton.styleFrom(
          foregroundColor: Colors.transparent,
          disabledForegroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 32),
          shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(5)),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isValid ? Colors.white : Colors.black, // TODO COLOR
          ),
        ),
      ),
    );
  }
}
