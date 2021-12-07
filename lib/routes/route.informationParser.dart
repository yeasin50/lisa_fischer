import 'package:flutter/cupertino.dart';

import '../constants/constants.dart';
import '../extensions/extensions.dart';
import 'routes.dart';

class AppRouteInformationParser extends RouteInformationParser<AppRoutePath> {
  String? _unkownPath;

  @override
  Future<AppRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '/');

    if (uri.pathSegments.isEmpty) {
      return AppRoutePath.work();
    }
    //* goto to 404 if user use x/x/
    if (uri.pathSegments.length > 1) {
      _unkownPath = uri.path;
      return AppRoutePath.unknown();
    }
    if (uri.pathSegments[0] == PageName.about.value) {
      return AppRoutePath.about();
    }

    if (uri.pathSegments[0] == PageName.contact.value) {
      return AppRoutePath.contact();
    }

    if (uri.pathSegments[0] == PageName.bercelona_metro_redesign.value) {
      return AppRoutePath.bercelonaMetroRedesign();
    }

    if (uri.pathSegments[0] == PageName.buy_on_google.value) {
      return AppRoutePath.buyOnGoogle();
    }

    if (uri.pathSegments[0] == PageName.google_shopping.value) {
      return AppRoutePath.googleShopping();
    }

    if (uri.pathSegments[0] == PageName.leveled.value) {
      return AppRoutePath.leveled();
    }

    if (uri.pathSegments[0] == PageName.loppet_winter_festival.value) {
      return AppRoutePath.loppetWinterFestival();
    }

    if (uri.pathSegments[0] == PageName.lucere.value) {
      return AppRoutePath.lucere();
    }

    if (uri.pathSegments[0] == PageName.oro.value) {
      return AppRoutePath.oro();
    }

    if (uri.pathSegments[0] == PageName.thrive.value) {
      return AppRoutePath.thrive();
    }

    if (uri.pathSegments[0] == PageName.visda.value) {
      return AppRoutePath.visda();
    }

    ///* `unkwon route`
    return AppRoutePath.unknown();
  }

  @override
  RouteInformation? restoreRouteInformation(AppRoutePath configuration) {
    if (configuration.isUnkwon) {
      return RouteInformation(location: _unkownPath);
    }

    if (configuration.isAbout) {
      return PageName.about.location;
    }
    if (configuration.isContact) {
      return PageName.contact.location;
    }

    //* work pagesInfo
    if (configuration.isBercelonaMetroRedesign) {
      return PageName.bercelona_metro_redesign.location;
    }

    if (configuration.isBuyOnGoogle) {
      return PageName.buy_on_google.location;
    }

    if (configuration.isGoogleShopping) {
      return PageName.google_shopping.location;
    }

    if (configuration.isLeveled) {
      return PageName.leveled.location;
    }

    if (configuration.isLoppetWinterFestival) {
      return PageName.loppet_winter_festival.location;
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
