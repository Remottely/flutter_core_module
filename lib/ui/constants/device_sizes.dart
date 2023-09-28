import 'dart:io';

class DeviceSizes {
  const DeviceSizes();

  static double statusBarHeight = 0.0;
  static double notchHeight = 0.0;
  // static late double statusBarHeight;
  // static late double notchHeight;

  double get appBarHeight => Platform.isAndroid ? 64 : 64; //124;

  void setStatusBarHeight({required double statusBarHeight}) {
    statusBarHeight = statusBarHeight;
  }

  void setNotchHeight({required double notchHeight}) {
    notchHeight = notchHeight;
  }
}
