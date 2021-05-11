import 'package:flutter/material.dart';

/// this page route will start from `TopRight`
Route pageRouteFromRT(
  Function child, {
  Offset startOffset = const Offset(0, -.8),
}) {
  // print("type=> ${child.runtimeType} ");
  return PageRouteBuilder(
    transitionDuration: Duration(milliseconds: 500),
    pageBuilder: (context, animation, secondaryAnimation) => child(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var curve = Curves.easeInOutQuad;

      var tween = Tween(
        /// begin [Offset()] is responsible for corner;
        begin: startOffset,
        end: Offset.zero,
      ).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
