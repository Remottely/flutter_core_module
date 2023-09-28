import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuBottomSheetBody extends StatelessWidget {
  const MewnuBottomSheetBody({super.key, this.header, required this.child});

  final Widget? header;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: mewnuTopBorders(),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.withOpacity(0.3),
          child: child,
        ),
      ),
    );
  }
}
