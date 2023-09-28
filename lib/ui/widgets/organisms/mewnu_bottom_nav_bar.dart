import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

class MewnuBottomNavBar extends StatelessWidget {
  final void Function(int) onTap;
  final int index;

  const MewnuBottomNavBar(
      {super.key, required this.onTap, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          24, 0, 24, MediaQuery.of(context).viewPadding.bottom),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Theme.of(context).custom.colors.navigationBarDividerColor,
            width: 1.0,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              getBottomNavBarItem(
                onTap: onTap,
                context: context,
                currentIndex: index,
                index: 0,
                png: 'assets/icons/png/home_outlined.png',
                label: 'INÍCIO',
              ),
              // getBottomNavBarItem(
              //   onTap: onTap,
              //   context: context,
              //   currentIndex: index,
              //   index: 1,
              //   png: 'assets/icons/png/companies_outlined.png',
              //   label: 'Restaurantes',
              // ),
              // getBottomNavBarItem(
              //   onTap: onTap,
              //   context: context,
              //   currentIndex: index,
              //   index: 2,
              //   png: 'assets/icons/png/audios_outlined.png',
              //   label: 'ÁUDIOS',
              // ),
              getBottomNavBarItem(
                onTap: onTap,
                context: context,
                currentIndex: index,
                index: 1,
                png: 'assets/icons/png/texts_outlined.png',
                label: 'Chat',
              ),
              getBottomNavBarItem(
                onTap: onTap,
                context: context,
                currentIndex: index,
                index: 2,
                png: 'assets/icons/png/profile_outlined.png',
                label: 'PROFILE',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget getBottomNavBarItem({
  required BuildContext context,
  required int currentIndex,
  required int index,
  required String png,
  required String label,
  required void Function(int) onTap,
}) {
  return Padding(
    padding: EdgeInsets.only(
      top: Platform.isAndroid ? 4 : 12,
      bottom: 8,
    ),
    child: IconButton(
      icon: currentIndex == index
          ? Image.asset(
              png,
              height: 32,
              width: 32,
              color: Theme.of(context).custom.colors.companyPaletteColor1,
            )
          : Image.asset(
              png,
              height: 32,
              width: 32,
              color: Theme.of(context).custom.colors.companyPaletteColor4,
            ),
      onPressed: () => onTap(index),
    ),
  );
}
