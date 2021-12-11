import 'package:flutter/material.dart';

import '/configs/configs.dart';
import 'Work.dart';

///`HomePage`
class WorkPage extends StatelessWidget {
  static const String routename = "/";

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
