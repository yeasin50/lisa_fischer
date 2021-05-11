import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/page_nav.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/lisa_about.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/Contact/contact.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/Work/work_main.dart';
import 'package:portfolio/test/routeAnimTest/page1.dart';

import 'custom_route.dart';

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
                  () => LisaFischerWorkMain(),
                  startOffset: Offset(.2, .5)));
            }),
        PageNavigator(
            isActive: currentActiveIndex == 1,
            title: "ABOUT",
            onClick: () {
              currentActiveIndex = 1;
              Navigator.of(context).pushReplacement(pageRouteFromRT(
                  () => LisaAboutPage(),
                  startOffset: Offset(.5, -.5)));
            }),
        PageNavigator(
            isActive: currentActiveIndex == 2,
            title: "CONTACT",
            onClick: () {
              currentActiveIndex = 2;
              Navigator.of(context).pushReplacement(pageRouteFromRT(
                  () => LisaContactPage(),
                  startOffset: Offset(1.0, 0)));
            }),
      ],
    );
  }
}
