import 'dart:async';

import 'package:flutter_core_module/flutter_core_module.dart';

mixin UIErrorPresenterManager {
  final _mainError = StreamController<UIErrorType?>.broadcast();
  Stream<UIErrorType?> get mainErrorStream => _mainError.stream;
  set mainError(UIErrorType? value) => _mainError.sink.add(value);

  void disposeUIErrorPresenterManager() {
    _mainError.close();
  }
}
