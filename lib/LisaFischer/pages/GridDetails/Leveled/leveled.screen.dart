import 'package:flutter/material.dart';

import '../../../../configs/configs.dart';
import '../../../../widgets/widgets.dart';
import 'Leveled.dart';

class LeveledScreen extends StatelessWidget {
  static final String routeName = "/work/leveled/";
  const LeveledScreen({Key? key}) : super(key: key);

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
