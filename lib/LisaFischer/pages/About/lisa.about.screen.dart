import 'package:flutter/material.dart';
import 'package:portfolio/widgets/widget.mobileWrapper.dart';

import '../../../configs/config.responsive.dart';
import '../../../widgets/widget.desktopWrapper.dart';
import '../../../widgets/widget.tabletWrapper.dart';
import 'lisa.about.desktop.dart';
import 'lisa.about.mobile.dart';
import 'lisa.about.tablet.dart';

class LisaAboutPage extends StatelessWidget {
  static final String routeName = "/about";
  @override
  Widget build(BuildContext context) {
    print("rebuild Page");
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => Responsive(
            desktop: const DesktopViewWrapper(
              child: const DesktopView(),
            ),
            tablet: TabletViewWrapper(
              child: TabletView(constraints: constraints),
            ),
            mobile: const MobieViewWrapper(
              child: const MobileView(),
            ),
          ),
        ),
      ),
    );
  }
}
