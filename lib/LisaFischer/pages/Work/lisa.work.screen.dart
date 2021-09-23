import 'package:flutter/material.dart';

import '../../../configs/configs.dart';
import '../../../widgets/widget.desktopWrapper.dart';
import '../../../widgets/widgets.dart';
import 'lisa.work.desktop.dart';
import 'lisa.work.mobile.dart';
import 'lisa.work.tablet.dart';

///`HomePage`
class WorkPage extends StatelessWidget {
  static const String routename = "LisaWork_Main";
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
