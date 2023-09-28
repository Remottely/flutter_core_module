import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuEmailInput extends StatelessWidget {
  final ValueSetter<String> onChanged;
  final String? errorText;

  const MewnuEmailInput(
      {super.key, required this.onChanged, required this.errorText});

  @override
  Widget build(BuildContext context) {
    return MewnuTextField(
      textInputType: TextInputType.emailAddress,
      hint: I18n.string.yourEmail,
      onChanged: onChanged,
      errorText: errorText,
    );
  }
}
