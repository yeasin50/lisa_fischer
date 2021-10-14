import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/constants.dart';
import 'routes/routes.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppRouterDelegate _routerDelegate = AppRouterDelegate();

  AppRouteInformationParser _informationParser = AppRouteInformationParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _informationParser,
      routerDelegate: _routerDelegate,
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
