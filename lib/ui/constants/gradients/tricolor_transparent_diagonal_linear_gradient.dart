import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

LinearGradient tricolorTransparentDiagonalLinearGradient(
        {required BuildContext context, required double opacity}) => // TODO
    LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      stops: const [0.2, 0.5, 0.8],
      colors: [
        Theme.of(context)
            .custom
            .colors
            .linearGradientColor1
            .withOpacity(opacity),
        Theme.of(context)
            .custom
            .colors
            .linearGradientColor2
            .withOpacity(opacity),
        Theme.of(context)
            .custom
            .colors
            .linearGradientColor3
            .withOpacity(opacity),
      ],
    );
