import 'package:flutter_core_module/flutter_core_module.dart';

CustomDarkTheme customDarkTheme = CustomDarkTheme();

class CustomDarkTheme extends ICustomTheme {
  @override
  ICustomColors get colors => CustomDarkColors();
  // @override
  // ICustomTextTheme get textTheme => CustomDarkTextTheme();
}
