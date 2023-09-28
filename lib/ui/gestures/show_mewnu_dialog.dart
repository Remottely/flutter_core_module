import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

Future<void> showMewnuDialog({
  required BuildContext context,
  Widget? header,
  required Widget child,
}) async {
  SchedulerBinding.instance.addPostFrameCallback((_) async {
    await showDialog<Widget>(
      context: context,
      barrierDismissible: false,
      builder: (context) => SimpleDialog(
        backgroundColor: Colors.transparent,
        insetPadding: UIPaddings.staticScreen,
        elevation: 0,
        contentPadding: EdgeInsets.zero,
        children: <Widget>[
          MewnuDialogBody(
            header: header,
            child: child,
          ),
        ],
      ),
    );
  });
}
