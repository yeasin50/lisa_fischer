import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/widgets/widgets.dart';

import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Intro(),
       
      ],
    );
  }
}
