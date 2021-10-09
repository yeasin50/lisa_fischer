import 'package:flutter/material.dart';

import '../../configs/configs.dart';
import '../../widgets/widgets.dart';
import 'About.dart';

class LisaAboutPage extends StatelessWidget {
  static final String routeName = "/about";
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
