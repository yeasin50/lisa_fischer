import 'package:flutter/material.dart';

import '../../../configs/configs.dart';
import '../../../widgets/widget.tabletWrapper.dart';
import '../../../widgets/widgets.dart';
import '../../constants/constants.dart';
import 'lisa.contact.desktop.dart';
import 'lisa.contact.mobile.dart';
import 'lisa.contact.tablet.dart';

class LisaContactPage extends StatelessWidget {
  static final String routeName = "/contactpage";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) => Responsive(
            mobile: MobileView(),
            tablet: TabletViewWrapper(
              child: TabletView(
                constraints: constraints,
              ),
            ),
            desktop: DesktopViewWrapper(
              child: DesktopView(),
            ),
          ),
        ),
      ),
    );
  }
}
