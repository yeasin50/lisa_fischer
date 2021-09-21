import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/constants/constants.dart';

import 'LisaFischer/pages/About/lisa.about.screen.dart';
import 'LisaFischer/pages/Contact/lisa.contact.screen.dart';
import 'LisaFischer/pages/Work/lisa.work.screen.dart';
import 'body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolios',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: white,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        WorkPage.routename: (_) => WorkPage(),
        LisaAboutPage.routeName: (_) => LisaAboutPage(),
        LisaContactPage.routeName: (_) => LisaContactPage(),
      },
    );
  }
}
