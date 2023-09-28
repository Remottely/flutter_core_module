import 'package:flutter_core_module/flutter_core_module.dart';

CustomLightTheme customLightTheme = CustomLightTheme();

class CustomLightTheme extends ICustomTheme {
  @override
  ICustomColors get colors => CustomLightColors();
  // @override
  // ICustomTextTheme get textTheme => CustomLightTextTheme();
}
