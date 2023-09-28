import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class CustomDarkColors extends ICustomColors {
  @override
  Color get black => const Color(0xFF000000);
  @override
  Color get white => const Color(0xFFFFFFFF);
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
  Color get companyColor1 =>
      const Color.fromRGBO(9, 9, 9, 1); // TODO // const Color(0xFF09071C);
  // @override
  // Color get companyDisabledColor =>
  //     Colors.grey.shade900; // TODO // const Color(0xFFB8B4CE);

  @override
  Color get linearGradientColor1 =>
      Colors.grey.shade600; // const Color(0xFF00D3C7); // TODO
  @override
  Color get linearGradientColor2 =>
      Colors.white; // const Color(0xFF0277FF); // TODO
  @override
  Color get linearGradientColor3 =>
      Colors.grey.shade600; // const Color(0xFF794BC2); // TODO
  @override
  Color get textSubtitle2Color =>
      Colors.grey.shade400; // TODO // const Color(0xFF84819F); // TODO

  @override
  Color get backgroundColor => Colors.black; // companyColor1;
  @override
  Color get backgroundLinearGradientColor1 => companyColor1;
  @override
  Color get backgroundLinearGradientColor2 => const Color(0xFF1F0A41); // TODO
  // @override
  // Color darkBackgroundLinearGradientColor3 => ; // TODO
  // @override
  // Color darkBackgroundLinearGradientColor4 => ; // TODO
  @override
  Color get enabledColor => companyPaletteColor5;
  // const //Color(0xFFFDFDFD); // const Color(0xFF4F4A77); // TODO

  @override
  Color get disabledColor =>
      companyPaletteColor3; // const Color(0xFF4F4A77); // TODO  @override
  @override
  Color get navigationBarDividerColor =>
      companyPaletteColor4; // const Color(0xFF2F286B); // TODO
  @override
  Color get splashBackgroundLinearGradientColor1 =>
      companyColor1.withOpacity(0);
  @override
  Color get splashBackgroundLinearGradientColor2 => companyColor1;
  @override
  Color get textColor => Colors.white;

  @override
  Color get activationBottomSheetColor1green =>
      const Color(0xFF01D3C7).withOpacity(0.3);
  @override
  Color get activationBottomSheetColor2purple =>
      const Color(0xFF794BC2).withOpacity(0.3);
  @override
  Color get activationBottomSheetColor3blue =>
      const Color(0xFF0277FF).withOpacity(0.3);
  @override
  Color get activationBottomSheetColor4grey =>
      const Color(0xFF777777).withOpacity(0.3);
  @override
  Color get formErrorColor => Colors.redAccent; // const Color(0xFFC70039);
}
