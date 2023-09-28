import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/widgets.dart';

class FirebaseAnalyticsRouterObserver extends NavigatorObserver {
  FirebaseAnalyticsRouterObserver({required this.analytics});
  final FirebaseAnalytics analytics;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    analytics.setCurrentScreen(screenName: route.settings.name);
    log('PUSHED SCREEN: ${route.settings.name}');
  }
}
