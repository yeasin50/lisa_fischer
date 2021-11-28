import 'package:flutter/material.dart';

class PageTransitionsTopRight extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return _PageTransitionsTopRight(
      child: child,
      routeAnimation: animation,
    );
  }
}

class _PageTransitionsTopRight extends StatelessWidget {
  _PageTransitionsTopRight({
    Key? key,
    required Animation<double>
        routeAnimation, // The route's linear 0.0 - 1.0 animation.
    required this.child,
  })  : _positionAnimation =
            routeAnimation.drive(_topRightTween.chain(_fastOutSlowInTween)),
        super(key: key);

  // Fractional offset from top right screen
  static final Tween<Offset> _topRightTween = Tween<Offset>(
    begin: const Offset(1.0, -1.0),
    end: Offset.zero,
  );
  static final Animatable<double> _fastOutSlowInTween =
      CurveTween(curve: Curves.bounceIn);

  final Animation<Offset> _positionAnimation;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _positionAnimation,
      child: child,
    );
  }
}
