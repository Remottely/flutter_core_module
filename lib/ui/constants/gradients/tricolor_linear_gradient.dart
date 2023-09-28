import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

LinearGradient tricolorLinearGradient({required BuildContext context}) =>
    LinearGradient(
      // TODO
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      stops: const [0.0, 0.1, 0.9, 1],
      colors: [
        Theme.of(context).custom.colors.disabledColor,
        Theme.of(context).custom.colors.companyPaletteColor4,
        Theme.of(context).custom.colors.companyPaletteColor4,
        Theme.of(context).custom.colors.disabledColor,
      ],
    );
