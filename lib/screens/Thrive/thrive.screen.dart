import 'package:flutter/material.dart';

import '../../configs/config.responsive.dart';
import '../../widgets/widgets.dart';
import 'Thrive.dart';

class Thrive extends StatelessWidget {
  static final String routeName = "/work/thrive";
  const Thrive({Key? key}) : super(key: key);

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
