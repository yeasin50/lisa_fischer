import 'package:flutter/material.dart';

import 'constants/constants.dart';
import 'screens/screens.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolios',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        primarySwatch: Colors.blue,
      ),
      home: WorkPage(),
      routes: {
        ///* main 3 pages
        WorkPage.routename: (_) => WorkPage(),
        AboutPage.routeName: (_) => AboutPage(),
        ContactPage.routeName: (_) => ContactPage(),
      },
    );
  }
}
