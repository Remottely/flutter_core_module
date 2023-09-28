import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

LinearGradient tricolorAppBarLinearGradient({required BuildContext context}) =>
    LinearGradient(
      // TODO
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      stops: const [0.8, 0.3, 0],
      colors: [
        Theme.of(context).custom.colors.linearGradientColor1.withOpacity(0.5),
        Theme.of(context).custom.colors.linearGradientColor2.withOpacity(0.5),
        Theme.of(context).custom.colors.linearGradientColor3.withOpacity(0.5),
      ],
    );
