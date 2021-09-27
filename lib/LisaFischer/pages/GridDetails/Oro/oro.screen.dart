import 'package:flutter/material.dart';

import '../../../../configs/config.responsive.dart';
import '../../../../widgets/widgets.dart';
import 'Oro.dart';

class Oro extends StatelessWidget {
  static final String routeName = "/work/oro";
  const Oro({Key? key}) : super(key: key);

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
