import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

Gradient tricolorTextButtonLinearGradient(
        {required BuildContext context}) => // TODO
    LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      stops: const [1, 0.5, 0],
      colors: [
        Theme.of(context).custom.colors.linearGradientColor1,
        Theme.of(context).custom.colors.linearGradientColor2,
        Theme.of(context).custom.colors.linearGradientColor3,
      ],
    );
