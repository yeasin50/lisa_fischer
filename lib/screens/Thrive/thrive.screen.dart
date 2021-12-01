import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

import '../../configs/configs.dart';
import 'Thrive.dart';

class ThrivePage extends StatelessWidget {
  static final String routeName = "/work/thrive";
  const ThrivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamicAppLabel(
      context: context,
      label: "Lisa Fischer — Thrive",
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
