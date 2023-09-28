import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

mixin LoadingStateManager {
  void handleLoading(BuildContext context, Stream<bool> stream) {
    stream.listen((isLoading) async {
      if (isLoading == true) {
        await showLoadingDialog(context: context, description: '???'); // todo
      } else {
        hideLoading(context);
      }
    });
  }
}
