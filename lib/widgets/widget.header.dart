import 'package:flutter/material.dart';

import '/utils/utils.customRoute.dart';
import '../screens/screens.dart';
import 'widget.pageNav.dart';

class LSHeader {
  /// track currentPage
  static int currentActiveIndex = 0;

  Image buildLogo({
    double width = 44,
  }) {
    final String _personal_monogram =
        "assets/images/lisa_personal_monogram.png";
    return Image.asset(
      _personal_monogram,
      scale: 1,
      fit: BoxFit.fitHeight,
      width: width,
      height: width * 1.5,
    );
  }

  Row navigators(BuildContext context) {
    // print("current index: $currentActiveIndex");
    return Row(
      children: [
        PageNavigator(
            title: "WORK",
            isActive: currentActiveIndex == 0,
            onClick: () {
              currentActiveIndex = 0;
              Navigator.of(context).pushReplacement(pageRouteFromRT(
                  () => WorkPage(),
                  startOffset: Offset(.2, .5)));
            }),
        PageNavigator(
            isActive: currentActiveIndex == 1,
            title: "ABOUT",
            onClick: () {
              currentActiveIndex = 1;
              Navigator.of(context).pushReplacement(pageRouteFromRT(
                  () => AboutPage(),
                  startOffset: Offset(.5, -.5)));
            }),
        PageNavigator(
            isActive: currentActiveIndex == 2,
            title: "CONTACT",
            onClick: () {
              currentActiveIndex = 2;
              Navigator.of(context).pushReplacement(pageRouteFromRT(
                  () => ContactPage(),
                  startOffset: Offset(1.0, 0)));
            }),
      ],
    );
  }
}
