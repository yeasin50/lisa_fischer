import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/constants.dart';
import 'routes/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppRouterDelegate _routeDelegate = AppRouterDelegate();
    return MaterialApp.router(
      routerDelegate: AppRouterDelegate(),
      routeInformationParser: AppRouteInformationParser(context: context),
      title: 'Portfolios',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato.toString(),
        scaffoldBackgroundColor: backgroundColor,
        primarySwatch: Colors.blue,
      ),
    );
  }
}
