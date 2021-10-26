import 'package:flutter/material.dart';

import '../../configs/configs.dart';
import 'BuyOnGoogle.dart';

class BuyOnGoolgePage extends StatelessWidget {
  static final String routeName = "/work/buyOnGoogle";
  const BuyOnGoolgePage({Key? key}) : super(key: key);

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
