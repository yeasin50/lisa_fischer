import 'package:flutter/material.dart';
import 'package:portfolio/configs/configs.dart';

import 'loppetWinterFestival.body.dart';

class LoppetWinterFestival extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Responsive(
          mobile: DesktopLayout(),
          tablet: DesktopLayout(),
          desktop: DesktopLayout(),
        ),
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaxWidthContainer(
      child: Body(),
    );
  }
}
