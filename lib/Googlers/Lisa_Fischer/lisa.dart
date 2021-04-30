import 'package:flutter/material.dart';
import '../Lisa_Fischer/pages/work.dart';

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
