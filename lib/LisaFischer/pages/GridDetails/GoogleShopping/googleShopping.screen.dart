import 'package:flutter/material.dart';
import 'package:portfolio/configs/config.maxWidthContainer.dart';

import '../../../../configs/config.responsive.dart';
import 'GoogleShopping.dart';

class GoogleShpoing extends StatelessWidget {
  static const String routeName = "/work/googleShoping";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          mobile: MobileView(),
          tablet: TabletView(),
          desktop: MaxWidthContainer(
            child: DesktopView(),
          ),
        ),
      ),
    );
  }
}
