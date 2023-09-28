import 'package:flutter/widgets.dart';
import 'package:flutter_core_module/flutter_core_module.dart';
import 'package:go_router/go_router.dart';

mixin NavigationStateManager {
  void handleNavigation(BuildContext context,
      {required Stream<String?> streamView, bool clear = false}) {
    streamView.listen(
      (view) {
        if (view != null && view.isNotEmpty && view != lastRoute) {
          lastRoute = view;
          if (clear == true) {
            context.go(view);
          } else {
            context.push(view);
          }
        }
      },
    );
  }
}
