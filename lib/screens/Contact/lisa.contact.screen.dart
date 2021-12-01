import 'package:flutter/material.dart';

import '../../configs/configs.dart';
import '../../utils/utils.dart';
import 'Contact.dart';

class ContactPage extends StatelessWidget {
  static final String routeName = "/contact_page";
  @override
  Widget build(BuildContext context) {
    dynamicAppLabel(
      context: context,
      label: "Contact — Lisa Fischer",
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
    ));
  }
}
