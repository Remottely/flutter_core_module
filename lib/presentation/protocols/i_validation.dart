import 'package:flutter_core_module/flutter_core_module.dart';

mixin IValidation {
  ValidationErrorType? validate(
      {required String field, required Map<String, dynamic> input});
}
