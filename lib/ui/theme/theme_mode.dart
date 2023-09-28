import 'package:flutter/material.dart';

ThemeMode getThemeMode() {
  double toDouble(TimeOfDay time) => time.hour + time.minute / 60.0;
  double morning = toDouble(const TimeOfDay(hour: 5, minute: 00));
  double night = toDouble(const TimeOfDay(hour: 18, minute: 00));
  double now = toDouble(TimeOfDay.now());

  return (morning - now) < 0 && (night - now) > 0
      ? ThemeMode.dark // TODO light theme
      : ThemeMode.dark;
}
