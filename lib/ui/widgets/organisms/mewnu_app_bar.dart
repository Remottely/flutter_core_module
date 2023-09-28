import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuAppBar extends StatelessWidget {
  const MewnuAppBar({super.key, this.title, this.leading, this.actions});

  final Widget? leading;
  final String? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    // return AppBar(
    //   // toolbarHeight: 0,
    //   // excludeHeaderSemantics: true,
    //   // flexibleSpace: const SizedBox(),
    //   backgroundColor: Colors.transparent,
    //   elevation: 0,
    //   title: Text(
    //     title ?? '',
    //     maxLines: 2,
    //     textAlign: TextAlign.center,
    //   ),
    //   centerTitle: true,
    //   // titleSpacing: 0,
    //   leading: leading,
    //   // onPressed != null
    //   //     ? Padding(
    //   //         padding: UIPaddings.backButton,
    //   //         child: MewnuBackButton(
    //   //           onPressed: onPressed!,
    //   //         ),
    //   //       )
    //   //     : const SizedBox(),
    //   // leadingWidth: 48,
    //   // toolbarHeight: 40,
    //   // automaticallyImplyLeading: true,
    //   // scrolledUnderElevation: 0.9,
    //   titleTextStyle: GoogleFonts.montserrat(
    //     fontSize: 24,
    //     fontWeight: FontWeight.w600,
    //     letterSpacing: 1,
    //   ),
    //   actions: actions,
    // );
    return SizedBox(
      height: 48,
      child: Padding(
        padding: UIPaddings.zero,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // UIBlancBox.horizontalSpaceExtraSmall,
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  leading ?? const SizedBox(),
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: Center(
                child: Text(
                  title ?? '',
                  textAlign: TextAlign.center,
                  // TODO theme font
                  // style: GoogleFonts.montserrat(
                  //   fontSize: 20,
                  //   fontWeight: FontWeight.w600,
                  //   letterSpacing: 1,
                  // ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children:
                    actions != null ? actions!.map((e) => e).toList() : [],
              ),
            ),
            // UIBlancBox.horizontalSpaceExtraSmall,
          ],
        ),
      ),
    );
  }
}
