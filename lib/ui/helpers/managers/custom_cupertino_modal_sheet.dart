// import 'package:darwinseguros_app/app/app.dart';
// import 'package:darwinseguros_app/core/core.dart';
import 'package:flutter/material.dart';

enum CupertinoModalSheetState {
  open,
  closed,
}

class CupertinoModalSheetController {
  dynamic Function({required Widget child})? showFullModal; // TODO
  bool? enableDrag;
  CupertinoModalSheetController({this.enableDrag = true});
}

class CustomCupertinoModalSheet extends StatefulWidget {
  final CupertinoModalSheetController? controller;
  final Color? backgroundColor;
  final Widget body;
  const CustomCupertinoModalSheet(
      {super.key, this.backgroundColor, required this.body, this.controller});

  @override
  CustomCupertinoModalSheetView createState() =>
      CustomCupertinoModalSheetView();
}

abstract class CustomCupertinoModalSheetViewModel
    extends State<CustomCupertinoModalSheet> {
  var _modalState = CupertinoModalSheetState.closed;
  @override
  void initState() {
    super.initState();
    widget.controller?.showFullModal = _showFullModal;
  }

  void _showFullModal({required Widget child}) {
    setState(() {
      _modalState = CupertinoModalSheetState.open;
    });
    // ignore: inference_failure_on_function_invocation // TODO
    showModalBottomSheet(
        context: context,
        barrierColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        elevation: 20,
        enableDrag: widget.controller?.enableDrag ?? true,
        builder: (_) {
          return FractionallySizedBox(
            heightFactor:
                MediaQuery.of(context).viewPadding.top <= 40 ? .95 : .93,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8.0,
                    // color: AppColor.black.withOpacity(.1),
                  )
                ],
              ),
              child:
                  // Padding(
                  // padding: const EdgeInsets.only(top: KPADDING_8),
                  // child:
                  child,
              // ),
            ),
          );
        }).whenComplete(() => setState(() {
          _modalState = CupertinoModalSheetState.closed;
        }));
  }

  AnimatedContainer _animatedContent(Widget container) {
    double scalePercent, scaleY, scaleX, radius;

    switch (_modalState) {
      case CupertinoModalSheetState.closed:
        scalePercent = 0.0;
        scaleY = 0.0;
        scaleX = 0.0;
        radius = 0.0;
        break;
      case CupertinoModalSheetState.open:
        scalePercent = 0.05;
        scaleY = MediaQuery.of(context).viewPadding.top;
        scaleX = 10;
        radius = 20.0;
        break;
    }

    double scale = 1;

    final contentScale = scale - scalePercent;

    return AnimatedContainer(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: widget.backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(radius),
        ),
        boxShadow: _modalState == CupertinoModalSheetState.open
            ? [
                BoxShadow(
                  offset: const Offset(0, -1),
                  color: Colors.grey.shade400,
                  blurRadius: 20,
                ),
              ]
            : null,
      ),
      transform: Matrix4.translationValues(
        scaleX,
        scaleY,
        0.0,
      )..scale(contentScale, contentScale),
      duration: const Duration(milliseconds: 100),
      child: container,
    );
  }
}

class CustomCupertinoModalSheetView extends CustomCupertinoModalSheetViewModel {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      fit: StackFit.expand,
      children: [
        Container(
          color: widget.backgroundColor ?? Colors.grey.shade400,
        ),
        _animatedContent(widget.body)
      ],
    );
  }
}
