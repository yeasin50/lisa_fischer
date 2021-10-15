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
      return AppRoutePath.contact();
    }
    if (_pageName == PageName.about) {
      return AppRoutePath.about();
    }

    //* workPages
    if (_pageName == PageName.bercelonaMetroRedesign) {
      return AppRoutePath.bercelonaMetroRedesign();
    }

    if (_pageName == PageName.buyOnGoogle) {
      return AppRoutePath.buyOnGoogle();
    }

    if (_pageName == PageName.googleShopping) {
      return AppRoutePath.googleShopping();
    }

    if (_pageName == PageName.leveled) {
      return AppRoutePath.leveled();
    }

    if (_pageName == PageName.loppetWinterFestival) {
      return AppRoutePath.loppetWinterFestival();
    }

    if (_pageName == PageName.lucere) {
      return AppRoutePath.lucere();
    }

    if (_pageName == PageName.oro) {
      return AppRoutePath.oro();
    }

    if (_pageName == PageName.thrive) {
      return AppRoutePath.thrive();
    }

    if (_pageName == PageName.visda) {
      return AppRoutePath.visda();
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

        ///TODO: Overlay with WorkPage
        if (_pageName == PageName.buyOnGoogle)
          MaterialPage(
            key: ValueKey<String>("buyOnGooglePage"),
            child: BuyOnGoolgePage(),
          ),

        if (_pageName == PageName.bercelonaMetroRedesign)
          MaterialPage(
            key: ValueKey<String>("bercelonaMetroRedesignPage"),
            child: BercelonaMetroRedesignPage(),
          ),

        if (_pageName == PageName.googleShopping)
          MaterialPage(
            key: ValueKey<String>("googleShoppingPage"),
            child: GoogleShpoingPage(),
          ),

        if (_pageName == PageName.leveled)
          MaterialPage(
            key: ValueKey<String>("leveledPage"),
            child: LeveledPage(),
          ),

        if (_pageName == PageName.loppetWinterFestival)
          MaterialPage(
            key: ValueKey<String>("loppetWinterFestivalPage"),
            child: LoppetWinterFestivalPage(),
          ),

        if (_pageName == PageName.lucere)
          MaterialPage(
            key: ValueKey<String>("lucerePage"),
            child: LucerePage(),
          ),

        if (_pageName == PageName.oro)
          MaterialPage(
            key: ValueKey<String>("oroPage"),
            child: OroPage(),
          ),

        if (_pageName == PageName.thrive)
          MaterialPage(
            key: ValueKey<String>("thrivePage"),
            child: ThrivePage(),
          ),

        if (_pageName == PageName.visda)
          MaterialPage(
            key: ValueKey<String>("visdaPage"),
            child: VisdaPage(),
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

    ///* workPages
    if (configuration.isBercelonaMetroRedesign) {
      _setNewRoutePath(pName: PageName.bercelonaMetroRedesign);
    }

    if (configuration.isBuyOnGoogle) {
      _setNewRoutePath(pName: PageName.buyOnGoogle);
    }

    if (configuration.isGoogleShopping) {
      _setNewRoutePath(pName: PageName.googleShopping);
    }

    if (configuration.isLeveled) {
      _setNewRoutePath(pName: PageName.leveled);
    }

    if (configuration.isLoppetWinterFestival) {
      _setNewRoutePath(pName: PageName.loppetWinterFestival);
    }

    if (configuration.isLucere) {
      _setNewRoutePath(pName: PageName.lucere);
    }

    if (configuration.isOro) {
      _setNewRoutePath(pName: PageName.oro);
    }

    if (configuration.isThrive) {
      _setNewRoutePath(pName: PageName.thrive);
    }

    if (configuration.isVisda) {
      _setNewRoutePath(pName: PageName.visda);
    }
  }

  ///* simplify the SingleLine
  _setNewRoutePath({
    required PageName? pName,
    bool isErr = false,
  }) {
    show404 = isErr;
    _pageName = pName;
  }
}
