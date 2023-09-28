import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuFloatingAppBar extends StatelessWidget {
  final String title;
  final bool backButton;
  final Widget? iconWidget;
  final double height;

  const MewnuFloatingAppBar(
      {super.key,
      required this.title,
      this.iconWidget,
      this.backButton = false,
      this.height = 52});
  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: const Duration(milliseconds: 0),
      slidingBeginOffset: const Offset(0.0, -0.20),
      child: Container(
        height: height + MediaQuery.of(context).viewPadding.top,
        decoration: ShapeDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.black.withOpacity(0.9)
                : Colors.white.withOpacity(0.5),
            shape: const _DiamondBorder()),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              !backButton
                  ? Container()
                  : Icon(
                      Icons.adaptive.arrow_back_rounded,
                      size: UISizes.backArrowSize,
                    ),
              const Spacer(),
              iconWidget ?? const SizedBox(),
              UIBlancBox.horizontalSpaceExtraSmall,
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              !backButton
                  ? Container()
                  : SizedBox(
                      height: UISizes.backArrowSize,
                      width: UISizes.backArrowSize,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DiamondBorder extends ShapeBorder {
  const _DiamondBorder();

  @override
  EdgeInsetsGeometry get dimensions {
    return const EdgeInsets.only();
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect, textDirection: textDirection!);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..moveTo(0, 0)
      ..lineTo(rect.right, rect.top)
      ..lineTo(rect.left + rect.width / 1.0, rect.bottom)
      ..lineTo(rect.left, rect.top + rect.height / 1.3)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return OutlinedBorder.lerp(null, null, t)!;
  }
}
