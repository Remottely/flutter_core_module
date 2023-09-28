import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

void showErrorMessage(BuildContext context, String error) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Theme.of(context).custom.colors.formErrorColor,
      content: Text(
        error,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.black,
              fontSize: 20,
            ),
      ),
    ),
  );
}
