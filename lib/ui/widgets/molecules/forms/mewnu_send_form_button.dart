import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuSendFormButton extends StatelessWidget {
  // todo loading button?
  final void Function()? onPressed;
  final String label;
  final bool isValid;

  const MewnuSendFormButton(this.label,
      {super.key, required this.onPressed, required this.isValid});

  @override
  Widget build(BuildContext context) {
    return MewnuValidateFlatButton(
      label,
      onPressed: onPressed,
      isValid: isValid,
    );
  }
}
