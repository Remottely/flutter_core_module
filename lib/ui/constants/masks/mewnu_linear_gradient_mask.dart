import 'package:flutter/widgets.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuLinearGradientMask extends StatelessWidget {
  const MewnuLinearGradientMask({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) {
        return tricolorLinearGradient(context: context).createShader(bounds);
      },
      child: child,
    );
  }
}
