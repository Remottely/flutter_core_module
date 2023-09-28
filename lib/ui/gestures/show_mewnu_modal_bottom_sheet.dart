import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

Future<void> showMewnuModalBottomSheet({
  required BuildContext context,
  Widget? header,
  required Widget child,
}) async {
  SchedulerBinding.instance.addPostFrameCallback((_) async {
    await showModalBottomSheet<void>(
      isDismissible: false,
      enableDrag: false,
      isScrollControlled: true,
      context: context,
      backgroundColor: Theme.of(context).custom.colors.transparent,
      // shape: RoundedRectangleBorder(
      //   borderRadius: mewnuTopBorders(),
      // ), // TODO
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: FractionallySizedBox(
                heightFactor: 0.88,
                child: MewnuBottomSheetBody(
                  header: header,
                  child: child,
                ),
              )),
        );
      },
    );
  });
}
