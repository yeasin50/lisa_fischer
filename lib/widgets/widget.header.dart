import 'package:flutter/material.dart';
import 'package:portfolio/constants/const.enum.pagesName.dart';
import 'package:portfolio/providers/provider.navigator.dart';
import 'package:provider/provider.dart';

import 'widget.pageNav.dart';

class LSHeader {
  /// track currentPage ///TODO: change to provider
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

  //* update: disable nav:from current page tab
  Row navigators(BuildContext context) {
    // print("current index: $currentActiveIndex");

    PageNotifier pageNotifier =
        Provider.of<PageNotifier>(context, listen: false);
    return Row(
      children: [
        PageNavigator(
            title: "WORK",
            isActive: currentActiveIndex == 0,
            onClick: () {
              currentActiveIndex = 0;

              // Navigator.of(context).pushReplacement(pageRouteFromRT(
              //     () => WorkPage(),
              //     startOffset: Offset(.2, .5)));
              if (pageNotifier.pageName != null) {
                pageNotifier.changeScreen(pageName: null);
              }
            }),
        PageNavigator(
            isActive: currentActiveIndex == 1,
            title: "ABOUT",
            onClick: () {
              currentActiveIndex = 1;
              // Navigator.of(context).pushReplacement(pageRouteFromRT(
              //     () => AboutPage(),
              //     startOffset: Offset(.5, -.5)));
              if (pageNotifier.pageName != PageName.about) {
                pageNotifier.changeScreen(pageName: PageName.about);
              }
            }),
        PageNavigator(
            isActive: currentActiveIndex == 2,
            title: "CONTACT",
            onClick: () {
              currentActiveIndex = 2;

              if (pageNotifier.pageName != PageName.contact) {
                pageNotifier.changeScreen(pageName: PageName.contact);
              }

              // Navigator.of(context).pushReplacement(pageRouteFromRT(
              //     () => ContactPage(),
              //     startOffset: Offset(1.0, 0)));
            }),
      ],
    );
  }
}
