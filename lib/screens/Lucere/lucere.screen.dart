import 'package:flutter/material.dart';

import '../../configs/configs.dart';
import '../../utils/utils.dart';
import 'Lucere.dart';

class LucerePage extends StatelessWidget {
  static final String routeName = "/work/lucere";
  const LucerePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamicAppLabel(
      context: context,
      label: "Lisa Fischer — Lucere",
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
