import 'package:flutter/material.dart';

import '../../configs/config.maxWidthContainer.dart';
import '../../configs/config.responsive.dart';
import 'GoogleShopping.dart';
import 'widgets/widgets.dart';

///* we dont need to use wrapper here,
///* Following the main UI
class GoogleShpoingPage extends StatelessWidget {
  static const String routeName = "/work/googleShoping";
  @override
  Widget build(BuildContext context) {
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
