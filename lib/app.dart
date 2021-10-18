import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
