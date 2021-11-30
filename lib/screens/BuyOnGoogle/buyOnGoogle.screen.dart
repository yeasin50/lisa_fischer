import 'package:flutter/material.dart';

import '../../configs/configs.dart';
import '../../utils/utils.dart';
import 'BuyOnGoogle.dart';

class BuyOnGoolgePage extends StatelessWidget {
  static final String routeName = "/work/buy_on_google";
  const BuyOnGoolgePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamicAppLabel(
      context: context,
      label: "Lisa Fischer — Buy on Google",
    );

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
