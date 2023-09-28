// import 'package:darwinseguros_app/app/app.dart';
// import 'package:darwinseguros_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuScaffold extends StatelessWidget with KeyboardManager {
  final Widget body;
  final Color backgroundColor;
  final PreferredSizeWidget? appBar;
  final Widget? floatingAppBar;
  final Widget? bottomNavigationBar;
  final Future<bool> Function()? onWillPop;
  final bool? resizeToAvoidBottomInset;
  final bool extendBody;
  final bool extendBodyBehindAppBar;
  final Widget? backgroundImage;
  final EdgeInsetsGeometry? padding;

  const MewnuScaffold(
      {super.key,
      required this.body,
      this.backgroundColor = Colors.transparent,
      this.appBar,
      this.floatingAppBar,
      this.bottomNavigationBar,
      this.onWillPop,
      this.resizeToAvoidBottomInset,
      this.extendBody = false,
      this.extendBodyBehindAppBar = false,
      this.backgroundImage,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => hideKeyboard(context),
      child: Stack(
        alignment: Alignment.topCenter,
        fit: StackFit.expand,
        children: [
          WillPopScope(
            onWillPop: onWillPop ??
                () async {
                  if (Navigator.of(context).userGestureInProgress) return false;
                  return true;
                },
            child: Scaffold(
              bottomNavigationBar: bottomNavigationBar,
              appBar: appBar,
              backgroundColor: backgroundColor,
              resizeToAvoidBottomInset: resizeToAvoidBottomInset,
              extendBody: extendBody,
              extendBodyBehindAppBar: extendBodyBehindAppBar,
              body: Stack(
                fit: StackFit.expand,
                children: [
                  // DelayedDisplay(
                  //   delay: const Duration(milliseconds: 100),
                  //   slidingBeginOffset: const Offset(0.0, -0.20),
                  //   child:
                  backgroundImage ?? const SizedBox(),
                  // ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      MediaQuery.of(context).viewPadding.top,
                      0,
                      MediaQuery.of(context).viewPadding.bottom,
                    ),
                    child: Padding(
                      padding: padding ?? UIPaddings.staticScreen,
                      child: body,
                    ),
                  ),
                  floatingAppBar ?? const SizedBox(),
                  // _loading(),
                ],
              ),
            ),
          ),
          // _notification(),
        ],
      ),
    );
  }

  // Widget _loading() => ValueListenableBuilder(
  //       valueListenable: Modular.get<AppStateLoading>().loading,
  //       builder: (BuildContext _, bool value, Widget? __) {
  //         return value
  //             ? Container(
  //                 key: const Key('loading'),
  //                 color: Colors.white.withOpacity(.9),
  //                 child: const Center(
  //                   child: SizedBox(
  //                     width: 60,
  //                     height: 60,
  //                     child: CircularProgressIndicator(),
  //                   ),
  //                 ),
  //               )
  //             : Container();
  //       },
  //     );

  // Widget _notification() {
  //   final notificationFeedbackInstance = Modular.get<AppNotificationFeedback>();

  //   return ValueListenableBuilder(
  //     valueListenable: notificationFeedbackInstance.show,
  //     builder: (_, value, __) => AnimatedPositioned(
  //       top: notificationFeedbackInstance.show.value
  //           ? (KPADDING_16 + topPadding)
  //           : -200,
  //       duration: NOTIFICATION_ANIMATION_DURATION,
  //       child: NotificationCardView(
  //         label: notificationFeedbackInstance.label ?? '',
  //         icon: notificationFeedbackInstance.icon,
  //         success: notificationFeedbackInstance.success,
  //         onTap: notificationFeedbackInstance.onTap,
  //         backgroundColor: notificationFeedbackInstance.backgroundColor,
  //         iconColor: notificationFeedbackInstance.iconColor,
  //         textColor: notificationFeedbackInstance.textColor,
  //       ),
  //     ),
  //   );
  // }
}
