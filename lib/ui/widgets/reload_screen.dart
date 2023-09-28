import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class ReloadScreen extends StatelessWidget {
  final String error;
  final Future<void> Function() reload;

  const ReloadScreen({super.key, required this.error, required this.reload});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(error,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: reload,
            child: Text(I18n.string.reload),
          )
        ],
      ),
    );
  }
}
