import 'package:flutter/material.dart';
import 'package:portfolio/configs/configs.dart';
import 'package:portfolio/widgets/widgets.dart';

import 'BarcelonaMetroRedesign.dart';

class BercelonaMetroRedesign extends StatelessWidget {
  static const String routeName = "/work/bercelonaMetroRedesign";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          desktop: DesktopViewWrapper(
            child: DesktopView(),
          ),
          tablet: TabletViewWrapper(
            child: TabletView(),
          ),
          mobile: MobieViewWrapper(
            child: MobileView(),
          ),
        ),
      ),
    );
  }
}
