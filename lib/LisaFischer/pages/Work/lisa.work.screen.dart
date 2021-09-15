import 'package:flutter/material.dart';

import 'package:portfolio/configs/configs.dart';
import 'package:portfolio/widgets/widget.desktopWrapper.dart';
import 'package:portfolio/widgets/widgets.dart';
import 'lisa.work.desktop.dart';
import 'lisa.work.tablet.dart';
import 'lisa.work.mobile.dart';

///`HomePage`
class WorkPage extends StatelessWidget {
  static const String routename = "LisaWork_Main";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          desktop: DesktopViewWrapper(child: DesktopView()),
          tablet: TabletViewWrapper(child: TabletView()),
          mobile: MobileView(),
        ),
      ),
    );
  }
}
