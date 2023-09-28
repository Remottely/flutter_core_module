import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuPasswordConfirmationInput extends StatelessWidget {
  final ValueSetter<String> onChanged;
  final String? errorText;

  const MewnuPasswordConfirmationInput(
      {super.key, required this.onChanged, required this.errorText});

  @override
  Widget build(BuildContext context) {
    return MewnuTextField(
      textInputType: TextInputType.visiblePassword,
      hint: I18n.string.aa28,
      onChanged: onChanged,
      errorText: errorText,
      obscureText: true,
    );
  }
}
