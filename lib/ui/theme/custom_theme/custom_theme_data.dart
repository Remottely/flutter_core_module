import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

extension CustomThemeData on ThemeData {
  ICustomTheme get custom =>
      brightness == Brightness.dark ? customDarkTheme : customLightTheme;
}
