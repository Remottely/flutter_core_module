import 'package:flutter_core_module/flutter_core_module.dart';

class CompareFieldsValidation implements IFieldValidation {
  @override
  final String field;
  final String fieldToCompare;

  CompareFieldsValidation({required this.field, required this.fieldToCompare});

  @override
  ValidationErrorType? validate(Map<String, dynamic> input) =>
      input[field] != null &&
              input[fieldToCompare] != null &&
              input[field] != input[fieldToCompare]
          ? ValidationErrorType.invalidField
          : null;

  @override
  bool operator ==(covariant CompareFieldsValidation other) {
    if (identical(this, other)) return true;

    return other.field == field && other.fieldToCompare == fieldToCompare;
  }

  @override
  int get hashCode => field.hashCode ^ fieldToCompare.hashCode;
}
