import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

mixin StreamUIErrorStateManager {
  void handleMainError(BuildContext context, Stream<UIErrorType?> stream) {
    stream.listen((error) {
      if (error != null) {
        showErrorMessage(context, error.message);
      }
    });
  }
}
