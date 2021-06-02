import 'package:flutter/material.dart';
import 'package:portfolio/config/max_width_container.dart';
import 'package:portfolio/config/responsive.dart';
import 'package:portfolio/test/fadeAnimTest.dart';
import './body.dart';

///TODO:: change textStyle and create widget instead column
class BuyOnGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DesktopLayout(),

        //  Responsive(
        //   mobile: Container(),
        //   tablet: Padding(
        //     padding: const EdgeInsets.symmetric(
        //       horizontal: 40,
        //     ),
        //     child: DesktopBody(),
        //   ),
        //   desktop: DesktopLayout(),
        // ),
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaxWidthContainer(
      child: DesktopBody(),
    );
  }
}
