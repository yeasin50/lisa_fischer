import 'package:flutter/material.dart';

import 'LisaFischer/pages/About/lisa.about.page.dart';
import 'LisaFischer/pages/Contact/lisa.contact.screen.dart';

import 'LisaFischer/pages/GridDetails/Leveled/leveled.screen.dart';
import 'LisaFischer/pages/Work/lisa.work.screen.dart';

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
      home: LeveledGridItemScreen(),
      routes: {
        LisaFischerWorkMain.routename: (_) => LisaFischerWorkMain(),
        LisaAboutPage.routeName: (_) => LisaAboutPage(),
        LisaContactPage.routeName: (_) => LisaContactPage(),
      },
    );
  }
}
