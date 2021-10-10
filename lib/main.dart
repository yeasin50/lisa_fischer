import 'package:flutter/material.dart';

import 'body.dart';
import 'constants/constants.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

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
      home: MyHomePage(),
      routes: {
        WorkPage.routename: (_) => WorkPage(),
        LisaAboutPage.routeName: (_) => LisaAboutPage(),
        LisaContactPage.routeName: (_) => LisaContactPage(),
      },
    );
  }
}
