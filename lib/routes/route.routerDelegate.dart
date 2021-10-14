import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../screens/screens.dart';
import 'route.routePaths.dart';

class AppRouterDelegate extends RouterDelegate<AppRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoutePath> {
  final GlobalKey<NavigatorState> navigatorKey;

  AppRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>() {
    currentConfiguration;
  }

  bool show404 = false;
  PageName? _pageName;

  AppRoutePath get currentConfiguration {
    if (show404) {
      return AppRoutePath.unkwon();
    }
    if (_pageName == null) {
      return AppRoutePath.work();
    }
    if (_pageName == PageName.contact) {
      print("contactpage ccfig");
      return AppRoutePath.contact();
    }
    if (_pageName == PageName.about) {
      print("aboutpage ccfig");
      return AppRoutePath.about();
    }

    return AppRoutePath.unkwon();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        if (show404)
          MaterialPage(
            key: ValueKey<String>("ErrorPage"),
            child: ErrorPage(),
          ),
        if (!show404)
          MaterialPage(
            key: ValueKey<String>("workPage"),
            child: WorkPage(),
          ),
        if (_pageName == PageName.about)
          MaterialPage(
            key: ValueKey<String>("AboutPage"),
            child: AboutPage(),
          ),
        if (_pageName == PageName.contact)
          MaterialPage(
            key: ValueKey<String>("ContactPage"),
            child: ContactPage(),
          ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        show404 = false;
        _pageName = null;
        notifyListeners();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(AppRoutePath configuration) async {
    if (configuration.isUnkwon) {
      show404 = true;
      _pageName = null;
    }

    if (configuration.isWork) {
      show404 = false;
      _pageName = null;
    }

    if (configuration.isAbout) {
      show404 = false;
      _pageName = PageName.about;
    }
    if (configuration.isContact) {
      show404 = false;
      _pageName = PageName.contact;
    }
  }
}
