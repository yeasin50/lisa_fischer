import 'package:flutter/material.dart';

import '../../configs/configs.dart';
import '../../widgets/widgets.dart';
import 'BarcelonaMetroRedesign.dart';

class BercelonaMetroRedesign extends StatelessWidget {
  static const String routeName = "/work/bercelonaMetroRedesign";
  @override
  Widget build(BuildContext context) {
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
