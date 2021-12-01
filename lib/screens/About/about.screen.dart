import 'package:flutter/material.dart';

import '../../configs/configs.dart';
import '../../utils/utils.dart';
import 'About.dart';

class AboutPage extends StatelessWidget {
  static final String routeName = "/about";
  @override
  Widget build(BuildContext context) {
    dynamicAppLabel(
      context: context,
      label: "About — Lisa Fischer",
    );
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          mobile: MobieViewWrapper(
            child: MobileView(),
          ),
          tablet: TabletViewWrapper(
            child: TabletView(),
          ),
          desktop: DesktopViewWrapper(
            child: DesktopView(),
          ),
        ),
      ),
    );
  }
}
