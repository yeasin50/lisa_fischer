import 'dart:developer';

import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../extensions/enumParser.dart';
import 'pageTransitions.dart';

class PageTransitionsManager extends PageTransitionsTheme {
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    log("PageTransitions: ${route.transitionDuration}");

    final pageName = route.settings.name;

    return pageName == PageName.about.value
        ? child
        : PageTransitionsTopRight(
            child: child,
            routeAnimation: animation,
          );
  }
}
