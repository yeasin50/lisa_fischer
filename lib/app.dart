import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/constants.dart';
import 'routes/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolios',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato.toString(),
        scaffoldBackgroundColor: backgroundColor,
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      initialRoute: '/',
    );
  }
}
