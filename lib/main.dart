import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/lisa_about.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/Contact/contact.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/Work/work_main.dart';

import 'body.dart';
import 'test/routeAnimTest/page1.dart';
import 'test/routeAnimTest/page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolios',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        LisaFischerWorkMain.routename: (_) => LisaFischerWorkMain(),
        LisaAboutPage.routeName: (_) => LisaAboutPage(),
        LisaContactPage.routeName: (_) => LisaContactPage(),
        Page1.routeName: (_) => Page1(),
        Page2.routeName: (_) => Page2(),
      },
    );
  }
}
