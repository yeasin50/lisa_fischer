import 'package:flutter/material.dart';

import '../../configs/configs.dart';
import '../../utils/utils.dart';
import 'Oro.dart';

class OroPage extends StatelessWidget {
  static final String routeName = "/work/oro";
  const OroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamicAppLabel(
      context: context,
      label: "Lisa Fischer — Oro",
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
