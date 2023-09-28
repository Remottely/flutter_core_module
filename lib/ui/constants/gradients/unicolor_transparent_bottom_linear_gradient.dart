import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

LinearGradient unicolorTransparentBottomLinearGradient(
        {required BuildContext context}) => // TODO
    LinearGradient(
      colors: [
        Theme.of(context)
            .custom
            .colors
            .navigationBarDividerColor
            .withOpacity(0),
        Theme.of(context).custom.colors.navigationBarDividerColor,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
