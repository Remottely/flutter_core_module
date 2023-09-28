import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

LinearGradient dimmingViewTopLinearGradient(BuildContext context) =>
    LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: const [0.2, 0.5],
      colors: [
        Theme.of(context).custom.colors.splashBackgroundLinearGradientColor1,
        Theme.of(context).custom.colors.splashBackgroundLinearGradientColor2,
      ],
    );
