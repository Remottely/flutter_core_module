import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

mixin UIErrorManager {
  void handleMainError(BuildContext context, UIErrorType? error) {
    if (error != null) {
      showErrorMessage(context, error.message);
    }
  }
}
