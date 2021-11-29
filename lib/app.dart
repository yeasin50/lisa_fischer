import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants/constants.dart';
import 'providers/provider.navigator.dart';
import 'routes/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AppRouterDelegate(
        notifier: Provider.of<PageNotifier>(context),
      ),
      routeInformationParser: AppRouteInformationParser(),
      title: 'Lisa Fischer',
      debugShowCheckedModeBanner: false,
      theme: _appTheme(context),
    );
  }
}

//* appTheme
ThemeData _appTheme(BuildContext context) {
  return ThemeData(
    // maybe no use of family :-
    fontFamily: AppTextStyles.fontFamily,
    scaffoldBackgroundColor: backgroundColor,
    primarySwatch: Colors.blue,
    pageTransitionsTheme: PageTransitionsManager(),
  );
}
