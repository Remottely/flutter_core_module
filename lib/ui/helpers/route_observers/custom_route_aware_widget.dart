import 'dart:developer';

import 'package:flutter/widgets.dart';

class CustomRouteAwareWidget extends StatefulWidget {
  final RouteObserver<PageRoute<dynamic>> routeObserver;

  final String name;
  final Widget child;

  const CustomRouteAwareWidget(this.routeObserver,
      {super.key, required this.name, required this.child});

  @override
  State<CustomRouteAwareWidget> createState() => CustomRouteAwareWidgetState();
}

class CustomRouteAwareWidgetState extends State<CustomRouteAwareWidget>
    with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    widget.routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
  }

  @override
  void dispose() {
    widget.routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    log('didPush ${widget.name}');
  }

  @override
  void didPopNext() {
    log('didPopNext ${widget.name}');
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
