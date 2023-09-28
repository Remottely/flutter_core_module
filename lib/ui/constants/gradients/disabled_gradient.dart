import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

LinearGradient disabledGradient({required BuildContext context}) =>
    LinearGradient(
      // TODO
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      stops: const [0, 0.5, 1],
      colors: [
        Theme.of(context).custom.colors.disabledColor,
        Theme.of(context).custom.colors.disabledColor,
      ],
    );
