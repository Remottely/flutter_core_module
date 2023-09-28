import 'package:flutter_core_module/flutter_core_module.dart';

class MinLengthValidation implements IFieldValidation {
  @override
  final String field;
  final int size;

  MinLengthValidation({required this.field, required this.size});

  @override
  ValidationErrorType? validate(Map<String, dynamic> input) =>
      input[field] != null && (input[field] as String).length >= size
          ? null
          : ValidationErrorType.invalidField;

  @override
  bool operator ==(covariant MinLengthValidation other) {
    if (identical(this, other)) return true;

    return other.field == field && other.size == size;
  }

  @override
  int get hashCode => field.hashCode ^ size.hashCode;
}
