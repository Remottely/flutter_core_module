import 'package:flutter/widgets.dart';

class MewnuApp extends InheritedWidget {
  DateTime actualDate;

  MewnuApp({Key? key, required this.actualDate, required Widget child})
      : super(key: key, child: child);

  set setActualDate(DateTime actualDate) => this.actualDate = actualDate;

  static MewnuApp of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<MewnuApp>() as MewnuApp);
  }

  @override
  bool updateShouldNotify(MewnuApp oldWidget) {
    return true;
  }
}
