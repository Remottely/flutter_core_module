import 'package:flutter_core_module/flutter_core_module.dart';

abstract class IFieldValidation {
  String get field;
  ValidationErrorType? validate(Map<String, dynamic> input);
}
