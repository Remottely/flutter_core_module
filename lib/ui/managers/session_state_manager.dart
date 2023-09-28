import 'package:flutter/widgets.dart';
import 'package:flutter_core_module/flutter_core_module.dart';
import 'package:go_router/go_router.dart';

mixin SessionStateManager {
  void handleSessionExpired(BuildContext context, Stream<bool> stream) {
    stream.listen((isExpired) {
      const view = '/sign-in';
      if (isExpired == true) {
        lastRoute = view;
        context.go(view);
      }
    });
  }
}
