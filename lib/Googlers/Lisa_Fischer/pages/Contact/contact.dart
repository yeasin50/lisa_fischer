import 'package:flutter/material.dart';

import 'body.dart';

class LisaContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LContactBody(),
      ),
    );
  }
}
