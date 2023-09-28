import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuFullNameInput extends StatelessWidget {
  final ValueSetter<String> onChanged;
  final String? errorText;

  const MewnuFullNameInput(
      {super.key, required this.onChanged, required this.errorText});

  @override
  Widget build(BuildContext context) {
    return MewnuTextField(
      textInputType: TextInputType.text,
      textCapitalization: TextCapitalization.words,
      hint: I18n.string.yourFullName,
      onChanged: onChanged,
      errorText: errorText,
    );
  }
}
