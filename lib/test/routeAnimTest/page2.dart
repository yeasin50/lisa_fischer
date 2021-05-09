import 'package:flutter/material.dart';
import 'package:portfolio/test/routeAnimTest/page1.dart';

class Page2 extends StatelessWidget {
  static final String routeName = "page2";

  // Route _pageRoute() {
  //   return PageRouteBuilder(
  //     pageBuilder: (context, animation, secondaryAnimation) => Page1(),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       var curve = Curves.easeInOutQuad;

  //       var tween = Tween(
  //         begin: Offset(1, -1),
  //         end: Offset.zero,
  //       ).chain(CurveTween(curve: curve));
  //       var offsetAnimation = animation.drive(tween);
  //       return SlideTransition(
  //         position: offsetAnimation,
  //         child: child,
  //       );
  //     },
  //   );
  // }}

  ///AlternativeWAy
  Route _pageRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => Page1(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(1, -1);
          var end = Offset.zero;
          var curve = Curves.ease;

          var tween = Tween(begin: begin, end: end);
          var curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: curve,
          );

          return SlideTransition(
            position: tween.animate(curvedAnimation),
            child: child,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Page 1"),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () => Navigator.of(context).push(_pageRoute()),
              child: Text("Push =>1"),
            ),
          ],
        ),
      ),
    );
  }
}
