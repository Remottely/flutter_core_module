// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_core_module/flutter_core_module.dart';

class IsEqualsFieldValidation implements IFieldValidation {
  @override
  final String field;
  final String comparisonField;

  const IsEqualsFieldValidation(
      {required this.field, required this.comparisonField});

  @override
  ValidationErrorType? validate(Map<String, dynamic> input) =>
      (input[field]?.isNotEmpty == true &&
                  input[comparisonField]?.isNotEmpty == true) &&
              (input[field] == input[comparisonField])
          ? null
          : ValidationErrorType.passwordsMustBeTheSame;

  @override
  bool operator ==(covariant IsEqualsFieldValidation other) {
    if (identical(this, other)) return true;

    return other.field == field && other.comparisonField == comparisonField;
  }

  @override
  int get hashCode => field.hashCode ^ comparisonField.hashCode;
}
