import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/provider.navigator.dart';

import '../constants/constants.dart';
import '../screens/screens.dart';
import 'route.routePaths.dart';

class AppRouterDelegate extends RouterDelegate<AppRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoutePath> {
  final GlobalKey<NavigatorState> navigatorKey;

  final PageNotifier notifier;

  AppRouterDelegate({required this.notifier})
      : navigatorKey = GlobalKey<NavigatorState>() {
    currentConfiguration;
  }

  @override
  AppRoutePath get currentConfiguration {
    if (notifier.isUnknown) {
      return AppRoutePath.unknown();
    }
    if (notifier.pageName == null) {
      return AppRoutePath.work();
    }
    if (notifier.pageName == PageName.contact) {
      return AppRoutePath.contact();
    }
    if (notifier.pageName == PageName.about) {
      return AppRoutePath.about();
    }

    //* workPages
    if (notifier.pageName == PageName.bercelona_metro_redesign) {
      return AppRoutePath.bercelonaMetroRedesign();
    }

    if (notifier.pageName == PageName.buy_on_google) {
      return AppRoutePath.buyOnGoogle();
    }

    if (notifier.pageName == PageName.google_shopping) {
      return AppRoutePath.googleShopping();
    }

    if (notifier.pageName == PageName.leveled) {
      return AppRoutePath.leveled();
    }

    if (notifier.pageName == PageName.loppet_winter_festival) {
      return AppRoutePath.loppetWinterFestival();
    }

    if (notifier.pageName == PageName.lucere) {
      return AppRoutePath.lucere();
    }

    if (notifier.pageName == PageName.oro) {
      return AppRoutePath.oro();
    }

    if (notifier.pageName == PageName.thrive) {
      return AppRoutePath.thrive();
    }

    if (notifier.pageName == PageName.visda) {
      return AppRoutePath.visda();
    }

    return AppRoutePath.unknown();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        if (notifier.isUnknown)
          MaterialPage(
            key: ValueKey<String>("ErrorPage"),
            child: ErrorPage(),
          ),
        if (!notifier.isUnknown)
          MaterialPage(
            key: ValueKey<String>("workPage"),
            child: WorkPage(),
          ),
        if (notifier.pageName == PageName.about)
          MaterialPage(
            key: ValueKey<String>("AboutPage"),
            child: AboutPage(),
          ),
        if (notifier.pageName == PageName.contact)
          MaterialPage(
            key: ValueKey<String>("ContactPage"),
            child: ContactPage(),
          ),

        ///TODO: Overlay with WorkPage
        if (notifier.pageName == PageName.buy_on_google)
          MaterialPage(
            key: ValueKey<String>("buyOnGooglePage"),
            child: BuyOnGoolgePage(),
          ),

        if (notifier.pageName == PageName.bercelona_metro_redesign)
          MaterialPage(
            key: ValueKey<String>("bercelonaMetroRedesignPage"),
            child: BercelonaMetroRedesignPage(),
          ),

        if (notifier.pageName == PageName.google_shopping)
          MaterialPage(
            key: ValueKey<String>("googleShoppingPage"),
            child: GoogleShoppingPage(),
          ),

        if (notifier.pageName == PageName.leveled)
          MaterialPage(
            key: ValueKey<String>("leveledPage"),
            child: LeveledPage(),
          ),

        if (notifier.pageName == PageName.loppet_winter_festival)
          MaterialPage(
            key: ValueKey<String>("loppetWinterFestivalPage"),
            child: LoppetWinterFestivalPage(),
          ),

        if (notifier.pageName == PageName.lucere)
          MaterialPage(
            key: ValueKey<String>("lucerePage"),
            child: LucerePage(),
          ),

        if (notifier.pageName == PageName.oro)
          MaterialPage(
            key: ValueKey<String>("oroPage"),
            child: OroPage(),
          ),

        if (notifier.pageName == PageName.thrive)
          MaterialPage(
            key: ValueKey<String>("thrivePage"),
            child: ThrivePage(),
          ),

        if (notifier.pageName == PageName.visda)
          MaterialPage(
            key: ValueKey<String>("visdaPage"),
            child: VisdaPage(),
          ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        notifier.changeScreen(pageName: null);
        notifyListeners();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(AppRoutePath configuration) async {
    if (configuration.isUnkwon) {
      _setNewRoutePath(pName: null, isErr: true);
    }

    if (configuration.isWork) {
      _setNewRoutePath(
        pName: null,
      );
    }

    if (configuration.isAbout) {
      _setNewRoutePath(
        pName: PageName.about,
      );
    }
    if (configuration.isContact) {
      _setNewRoutePath(
        pName: PageName.contact,
      );
    }

    ///* workPages
    if (configuration.isBercelonaMetroRedesign) {
      _setNewRoutePath(pName: PageName.bercelona_metro_redesign);
    }

    if (configuration.isBuyOnGoogle) {
      _setNewRoutePath(pName: PageName.buy_on_google);
    }

    if (configuration.isGoogleShopping) {
      _setNewRoutePath(pName: PageName.google_shopping);
    }

    if (configuration.isLeveled) {
      _setNewRoutePath(pName: PageName.leveled);
    }

    if (configuration.isLoppetWinterFestival) {
      _setNewRoutePath(pName: PageName.loppet_winter_festival);
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
    notifier.changeScreen(pageName: pName, isUnkwon: isErr);
  }
}
