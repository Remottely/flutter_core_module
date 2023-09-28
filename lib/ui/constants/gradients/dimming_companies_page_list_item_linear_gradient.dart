import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

LinearGradient dimmingCompaniesViewListItemLinearGradient(
        {required BuildContext context, required double starStop}) => // TODO
    LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [starStop, 1],
      colors: [
        Theme.of(context).custom.colors.splashBackgroundLinearGradientColor1,
        Theme.of(context)
            .custom
            .colors
            .splashBackgroundLinearGradientColor2
            .withOpacity(0.8),
      ],
    );
