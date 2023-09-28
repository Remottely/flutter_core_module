import 'dart:async';

mixin FormPresenterManager {
  final _isFormValid = StreamController<bool>.broadcast();
  Stream<bool> get isFormValidStream => _isFormValid.stream;
  set isFormValid(bool value) => _isFormValid.sink.add(value);

  void disposeFormPresenterManager() {
    _isFormValid.close();
  }
}
