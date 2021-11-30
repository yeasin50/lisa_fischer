import 'package:flutter/material.dart';

import '../../configs/config.maxWidthContainer.dart';
import '../../configs/config.responsive.dart';
import '../../utils/utils.dart';
import 'GoogleShopping.dart';
import 'widgets/widgets.dart';

///* we dont need to use wrapper here,
///* Following the main UI
class GoogleShoppingPage extends StatelessWidget {
  static const String routeName = "/work/google_shoping";
  @override
  Widget build(BuildContext context) {
    dynamicAppLabel(
      context: context,
      label: "Lisa Fischer — Google Shopping",
    );

    return SafeArea(
      child: Scaffold(
          body: LayoutBuilder(
        builder: (context, constraints) => Stack(
          children: [
            Background(
              maxWidth: constraints.maxWidth,
            ),
            Container(
              color: Colors.white24,
            ),
            Responsive(
              mobile: MobileView(),
              tablet: TabletView(),
              desktop: MaxWidthContainer(
                child: DesktopView(),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
