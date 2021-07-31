import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/lisa_about.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/Contact/contact.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/Work/work_main.dart';

import 'Googlers/Lisa_Fischer/pages/GridItemDetails/2.LoppetWinterFestival/loppet_winter_festival.dart';
import 'Googlers/Lisa_Fischer/pages/GridItemDetails/3.Visda/visda.screen.dart';
import 'Googlers/Lisa_Fischer/pages/GridItemDetails/4.Leveled/leveled.grid_item.screen.dart';
import 'body.dart';
import 'test/parent_test.dart';
import 'test/routeAnimTest/page1.dart';
import 'test/routeAnimTest/page2.dart';

////TODO:: create folder for alterView import
///For example redacted/Content/screens.dart:
// export 'BaseContent.dar?
//////
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
        Page1.routeName: (_) => Page1(),
        Page2.routeName: (_) => Page2(),
      },
    );
  }
}
