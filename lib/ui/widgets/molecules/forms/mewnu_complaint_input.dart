import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuComplaintInput extends StatelessWidget {
  final ValueSetter<String> onChanged;
  final String? errorText;

  const MewnuComplaintInput(
      {super.key, required this.onChanged, required this.errorText});

  @override
  Widget build(BuildContext context) {
    return MewnuTextField(
      textInputType: TextInputType.text,
      textCapitalization: TextCapitalization.words,
      hint: I18n.string.leaveYourComplaint,
      onChanged: onChanged,
      errorText: errorText,
    );
  }
}
