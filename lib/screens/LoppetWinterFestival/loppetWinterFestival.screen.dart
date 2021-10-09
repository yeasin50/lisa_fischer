import 'package:flutter/material.dart';

import '../../configs/configs.dart';
import '../../widgets/widgets.dart';
import 'LoppetWinterFestival.dart';

class LoppetWinterFestival extends StatelessWidget {
  static final String routeName = "/work/loppetWinterFestival";

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
