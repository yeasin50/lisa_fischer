import 'package:flutter/material.dart';

import '../constants/constants.dart';

//TODO: animate line
class DashLine extends StatelessWidget {
  const DashLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      width: 30,
      height: 3,
      color: kColorDash,
    );
  }
}
