import 'package:flutter/material.dart';

import '../../configs/config.maxWidthContainer.dart';
import '../../configs/config.responsive.dart';
import 'GoogleShopping.dart';

///* we dont need to use wrapper here,
///* Following the main UI
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
