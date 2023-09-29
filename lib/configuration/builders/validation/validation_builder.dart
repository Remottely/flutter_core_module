import 'package:flutter_core_module/flutter_core_module.dart';

class ValidationBuilder {
  static late ValidationBuilder _instance;
  String fieldName;
  List<IFieldValidation> validations = [];

  ValidationBuilder._(this.fieldName);

  static ValidationBuilder field(String fieldName) {
    _instance = ValidationBuilder._(fieldName);
    return _instance;
  }

  ValidationBuilder isEqualsTo(String comparisonField) {
    validations.add(IsEqualsFieldValidation(
        field: fieldName, comparisonField: comparisonField));
    return this;
  }

  ValidationBuilder required() {
    validations.add(RequiredFieldValidation(fieldName));
    return this;
  }

  ValidationBuilder fullName() {
    validations.add(FullNameValidation(fieldName));
    return this;
  }

  ValidationBuilder email() {
    validations.add(EmailValidation(fieldName));
    return this;
  }

  ValidationBuilder brazilBirthday() {
    validations.add(BirthdayValidation.brazil(fieldName));
    return this;
  }

  ValidationBuilder minLength(int size) {
    validations.add(MinLengthValidation(field: fieldName, size: size));
    return this;
  }

  List<IFieldValidation> build() => validations;
}
