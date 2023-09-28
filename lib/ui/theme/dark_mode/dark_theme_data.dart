import 'package:flutter/material.dart';
import 'package:flutter_core_module/flutter_core_module.dart';

const MaterialColor white = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);

final darkThemeData = ThemeData(
  brightness: Brightness.dark,
  // textTheme: DarkTextTheme().apply(
  //   bodyColor: customDarkTheme.colors.textColor,
  //   // displayColor: customDarkTheme.colors.textColor, // TODO
  // ),
  primarySwatch: white,
  primaryColor: Colors.white,
  canvasColor: customDarkTheme.colors.backgroundColor,
  scaffoldBackgroundColor: customDarkTheme.colors.backgroundColor,
  // colorScheme: customDarkTheme.colors.colorScheme, // TODO
  disabledColor: customDarkTheme.colors.disabledColor,
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
    },
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionColor: Colors.white,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 0.0,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.white,
    unselectedItemColor: customDarkTheme.colors.disabledColor,
    selectedLabelStyle: const TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 10,
    ),
    unselectedLabelStyle: const TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 10,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    // TODO
    style: ElevatedButton.styleFrom(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      disabledForegroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 28),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 28),
      disabledForegroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ),
  ),
  // colorScheme: ColorScheme.fromSwatch(primarySwatch: white)
  //     .copyWith(error: customDarkTheme.colors.formErrorColor),
  // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.white)
  //     .copyWith(background: customDarkTheme.colors.backgroundColor),
  // outlinedButtonTheme: OutlinedButtonThemeData( // TODO
  //   style: OutlinedButton.styleFrom(),
  // ),
);
