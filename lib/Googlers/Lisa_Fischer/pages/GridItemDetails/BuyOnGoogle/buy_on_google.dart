import 'package:flutter/material.dart';
import './body.dart';

class BuyOnGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DesktopBody(),
      ),
    );
  }
}
