import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuPageNotFound extends StatelessWidget {
  const MewnuPageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return MewnuScaffold(
      body: Center(
        child: Text(
          '404\n\nPAGE NOT FOUND',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
