import 'package:flutter/widgets.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class I18n {
  static ITranslation string = PtBr();

  static void load({required Locale locale}) {
    switch (locale.toString()) {
      default:
        string = PtBr();
        break;
    }
  }
}
