import 'package:flutter/material.dart';
import '/config/max_width_container.dart';
import '/config/responsive.dart';
import 'body.dart';

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
