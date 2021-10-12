import 'package:flutter/widgets.dart';

import '../screens/screens.dart';

//* Test on navigator1
final Map<String, WidgetBuilder> routes = {
  ///* main 3 pages
  WorkPage.routename: (_) => WorkPage(),
  AboutPage.routeName: (_) => AboutPage(),
  ContactPage.routeName: (_) => ContactPage(),

  //* work-pages
  BuyOnGoolgePage.routeName: (_) => BuyOnGoolgePage(),
  LoppetWinterFestivalPage.routeName: (_) => LoppetWinterFestivalPage(),
  VisdaPage.routeName: (_) => VisdaPage(),
  LeveledPage.routeName: (_) => LeveledPage(),
  GoogleShpoingPage.routeName: (_) => GoogleShpoingPage(),
  BercelonaMetroRedesignPage.routeName: (_) => BercelonaMetroRedesignPage(),
  OroPage.routeName: (_) => OroPage(),
  ThrivePage.routeName: (_) => ThrivePage(),
  LucerePage.routeName: (_) => LucerePage(),
};
