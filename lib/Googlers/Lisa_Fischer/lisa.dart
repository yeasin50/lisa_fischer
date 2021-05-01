import 'package:flutter/material.dart';
import 'pages/Work/work.dart';

///`HomePage`
class LisaFischer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: LFWork(),
    ));
  }
}
