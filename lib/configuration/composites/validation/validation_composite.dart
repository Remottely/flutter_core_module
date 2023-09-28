import 'package:flutter_core_module/flutter_core_module.dart';

class ValidationComposite implements IValidation {
  final List<IFieldValidation> validations;

  ValidationComposite(this.validations);

  @override
  ValidationErrorType? validate(
      {required String field, required Map<String, dynamic> input}) {
    ValidationErrorType? error;
    for (final validation in validations.where((v) => v.field == field)) {
      error = validation.validate(input);
      if (error != null) {
        return error;
      }
    }
    return error;
  }
}
