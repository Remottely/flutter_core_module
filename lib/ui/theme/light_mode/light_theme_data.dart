import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

final lightThemeData = ThemeData(
  brightness: Brightness.light,
  // textTheme: LightTextTheme().apply(
  //   bodyColor: customLightTheme.colors.textColor,
  //   // displayColor: customLightTheme.colors.textColor, // TODO
  // ),
  canvasColor: customLightTheme.colors.backgroundColor,
  scaffoldBackgroundColor: customLightTheme.colors.backgroundColor,
  disabledColor: customLightTheme.colors.disabledColor,
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
    },
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionColor: Colors.black,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 0.0,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.black,
    unselectedItemColor: customLightTheme.colors.disabledColor,
    selectedLabelStyle: const TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 10,
    ),
    unselectedLabelStyle: const TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 10,
    ),
  ),
  // elevatedButtonTheme: ElevatedButtonThemeData( // TODO
  //   style: ElevatedButton.styleFrom(
  //     elevation: 0.0,
  //     foregroundColor: Colors.transparent,
  //     disabledForegroundColor: Colors.transparent,
  //     shadowColor: Colors.transparent,
  //     padding: const EdgeInsets.symmetric(horizontal: 28),
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(5),
  //     ),
  //   ),
  // ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 28),
      disabledForegroundColor: Colors.transparent.withOpacity(0.38),
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
  ),
  // colorScheme: ColorScheme(
  //   surface: ,
  //   background: ,
  //   error: ,
  //   secondary: ,
  //   onSecondary: ,
  //   onPrimary: ,
  //   primary: ,
  //     brightness: Brightness.light,
  //     onBackground: customLightTheme.colors.backgroundColor,
  //     onError: customLightTheme.colors.formErrorColor),
  // outlinedButtonTheme: OutlinedButtonThemeData( // TODO
  //   style: OutlinedButton.styleFrom(),
  // ),
);
