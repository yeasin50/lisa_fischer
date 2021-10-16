import 'package:flutter/cupertino.dart';

import '../constants/constants.dart';
import '../extensions/extensions.dart';
import 'routes.dart';

class AppRouteInformationParser extends RouteInformationParser<AppRoutePath> {
  @override
  Future<AppRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '/');

    if (uri.pathSegments.isEmpty) {
      return AppRoutePath.work();
    }

    if (uri.pathSegments[0] == PageName.about.value)
      return AppRoutePath.about();

    if (uri.pathSegments[0] == PageName.contact.value)
      return AppRoutePath.contact();

    //* Work pages: seems everything is after 
    if (uri.pathSegments.length == 2) {
      if (uri.pathSegments[0] == PageName.work.value) {
        if (uri.pathSegments[1] == PageName.bercelonaMetroRedesign.value) {
          return AppRoutePath.bercelonaMetroRedesign();
        }

        if (uri.pathSegments[1] == PageName.buyOnGoogle.value) {
          return AppRoutePath.buyOnGoogle();
        }

        if (uri.pathSegments[1] == PageName.googleShopping.value) {
          return AppRoutePath.googleShopping();
        }

        if (uri.pathSegments[1] == PageName.leveled.value) {
          return AppRoutePath.leveled();
        }

        if (uri.pathSegments[1] == PageName.loppetWinterFestival.value) {
          return AppRoutePath.loppetWinterFestival();
        }

        if (uri.pathSegments[1] == PageName.lucere.value) {
          return AppRoutePath.lucere();
        }

        if (uri.pathSegments[1] == PageName.oro.value) {
          return AppRoutePath.oro();
        }

        if (uri.pathSegments[1] == PageName.thrive.value) {
          return AppRoutePath.thrive();
        }

        if (uri.pathSegments[1] == PageName.visda.value) {
          return AppRoutePath.visda();
        }
      }

      ///can be replaced with unkwon work page later
      return AppRoutePath.unkwon();
    }

    ///* `unkwon route`
    return AppRoutePath.unkwon();
  }

  @override
  RouteInformation? restoreRouteInformation(AppRoutePath configuration) {
    if (configuration.isUnkwon) {
      return RouteInformation(location: '/404');
    }

    if (configuration.isAbout) {
      return PageName.about.location;
    }
    if (configuration.isContact) {
      return PageName.contact.location;
    }

    //* work pagesInfo
    if (configuration.isBercelonaMetroRedesign) {
      return PageName.bercelonaMetroRedesign.location;
    }

    if (configuration.isBuyOnGoogle) {
      return PageName.buyOnGoogle.location;
    }

    if (configuration.isGoogleShopping) {
      return PageName.googleShopping.location;
    }

    if (configuration.isLeveled) {
      return PageName.leveled.location;
    }

    if (configuration.isLucere) {
      return PageName.lucere.location;
    }

    if (configuration.isOro) {
      return PageName.oro.location;
    }

    if (configuration.isThrive) {
      return PageName.thrive.location;
    }

    if (configuration.isVisda) {
      return PageName.visda.location;
    }

    return RouteInformation(location: '/');
  }
}
