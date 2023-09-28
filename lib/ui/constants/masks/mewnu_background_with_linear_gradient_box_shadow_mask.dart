import 'package:flutter/widgets.dart';

class MewnuBackgroundWithLinearGradientBoxShadowMask extends BoxShadow {
  final LinearGradient linearGradient;
  final BlurStyle customBlurStyle;
  // final double customBlurRadius; // TODO - REMOVE THIS?

  const MewnuBackgroundWithLinearGradientBoxShadowMask(
      {required this.linearGradient,
      this.customBlurStyle = BlurStyle.normal,
      // this.customBlurRadius = 16.0, // TODO - REMOVE THIS?
      Offset offset = Offset.zero,
      double spreadRadius = 0.0})
      : super(
          offset: offset,
          spreadRadius: spreadRadius,
        );

  @override
  Paint toPaint() {
    final Paint result = Paint()
      ..shader = linearGradient.createShader(
        Rect.fromPoints(
          const Offset(10, 0),
          const Offset(400, 0),
        ),
      )
      ..maskFilter = MaskFilter.blur(customBlurStyle, blurSigma);
    assert(() {
      if (debugDisableShadows) result.maskFilter = null;
      return true;
    }());
    return result;
  }
}
