import 'dart:async';

mixin SessionPresenterManager {
  final _isSessionExpired = StreamController<bool>.broadcast();
  Stream<bool> get isSessionExpiredStream => _isSessionExpired.stream;
  set isSessionExpired(bool value) => _isSessionExpired.sink.add(value);

  void disposeSessionPresenterManager() {
    _isSessionExpired.close();
  }
}
