import 'package:flutter/material.dart';

class MewnuText extends StatelessWidget {
  const MewnuText(this.text,
      {super.key, this.onTap, this.style, this.overflow, this.maxLines});

  final void Function()? onTap;
  final String text;
  final TextStyle? style;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent, // TODO PUT IT ON THEMEDATA
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Text(
        text,
        style: style,
        overflow: overflow,
        maxLines: maxLines,
      ),
    );
  }
}
