import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class CustomLightColors extends ICustomColors {
  @override
  Color get black => throw UnimplementedError();

  @override
  Color get white => throw UnimplementedError(); // const Color(0xFFC70039);
  @override
  Color get transparent => Colors.transparent;

  @override
  Color get companyPaletteColor1 => const Color(0xFFFDFDFD);
  @override
  Color get companyPaletteColor2 => const Color(0xFFEBEBEB);
  @override
  Color get companyPaletteColor3 => const Color(0xFFBABABA);
  @override
  Color get companyPaletteColor4 => const Color(0xFF262626);
  @override
  Color get companyPaletteColor5 => const Color(0xFF121212);

  @override
  Color get companyColor1 => const Color(0xFF09071C);
  // @override
  // Color get companyDisabledColor => const Color(0xFFB8B4CE);

  @override
  Color get linearGradientColor1 => const Color(0xFF00D3C7); // TODO
  @override
  Color get linearGradientColor2 => const Color(0xFF0277FF); // TODO
  @override
  Color get linearGradientColor3 => const Color(0xFF794BC2); // TODO
  @override
  Color get textSubtitle2Color => const Color(0xFF84819F); // TODO

  @override
  Color get backgroundColor => Colors.white;
  @override
  Color get backgroundLinearGradientColor1 => const Color(0xFF151F7C); // TODO
  @override
  Color get backgroundLinearGradientColor2 => const Color(0xFF767CB3); // TODO
  // @override // TODO
  Color get backgroundLinearGradientColor3 => const Color(0xFFD9DBEA); // TODO
  // @override // TODO
  Color get backgroundLinearGradientColor4 => Colors.white;
  // @override
  // Color get disabledColor => const Color(0xFFB8B4CE); // TODO
  @override
  Color get enabledColor =>
      const Color(0xFF121212); // const Color(0xFF4F4A77); // TODO
  @override
  Color get disabledColor => companyPaletteColor3;
  // @override
  // Color get disabledColor =>
  //     const Color(0xFFBABABA); // const Color(0xFF4F4A77); // TODO  @override
  @override
  Color get navigationBarDividerColor => const Color(0xFFCFEBEA); // TODO
  @override
  Color get splashBackgroundLinearGradientColor1 => Colors.white.withOpacity(0);
  @override
  Color get splashBackgroundLinearGradientColor2 => Colors.white;
  @override
  Color get textColor => companyColor1;

  @override
  Color get activationBottomSheetColor1green =>
      const Color(0xFF01D3C7).withOpacity(0.11);
  @override
  Color get activationBottomSheetColor2purple =>
      const Color(0xFFF1EDF8).withOpacity(1.0);
  @override
  Color get activationBottomSheetColor3blue =>
      const Color(0xFFEBF1FE).withOpacity(1.0);
  @override
  Color get activationBottomSheetColor4grey =>
      const Color(0xFF777777).withOpacity(0.1);

  @override
  Color get formErrorColor => Colors.redAccent;
}
