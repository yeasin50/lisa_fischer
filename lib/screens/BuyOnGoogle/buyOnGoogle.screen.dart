import 'package:flutter/material.dart';

import '../../configs/configs.dart';
import '../../widgets/widgets.dart';
import 'BuyOnGoogle.dart';

class BuyOnGoolge extends StatelessWidget {
  static final String routeName = "/work/buyOnGoogle";
  const BuyOnGoolge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
