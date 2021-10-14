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

    ///* `unkwon route`
    return AppRoutePath.unkwon();
  }

  @override
  RouteInformation? restoreRouteInformation(AppRoutePath configuration) {
    if (configuration.isUnkwon) {
      return RouteInformation(location: '/404');
    }

    if (configuration.isAbout) {
      return RouteInformation(location: PageName.about.location);
    }
    if (configuration.isContact)
      return RouteInformation(location: PageName.contact.location);

    return RouteInformation(location: '/');
  }
}
