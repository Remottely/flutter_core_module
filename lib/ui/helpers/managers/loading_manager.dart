import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

mixin LoadingManager {
  dynamic observableHandleLoading(
      BuildContext context, bool isLoading, String description) async {
    if (isLoading == true) {
      await showLoadingDialog(context: context, description: description);
    } else {
      hideLoading(context);
    }
  }
}
