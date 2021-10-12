import 'package:flutter/material.dart';

import '../../configs/config.responsive.dart';
import '../../configs/configs.dart';
import 'Thrive.dart';

class ThrivePage extends StatelessWidget {
  static final String routeName = "/work/thrive";
  const ThrivePage({Key? key}) : super(key: key);

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
